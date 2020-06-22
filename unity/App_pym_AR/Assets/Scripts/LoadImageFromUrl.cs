using System;
using System.Collections;
using UnityEngine;
using UnityEngine.Networking;
using UnityEngine.UI;

public class LoadImageFromUrl : MonoBehaviour
{
    private SpriteRenderer img;
    private RectTransform imageRectTransform;
    private Transform imageTransform;
    private string url;

    private void Awake()
    {
        imageTransform = gameObject.transform.Find("Image");
        if (imageTransform != null)
        {
            img = imageTransform.GetComponentInChildren<SpriteRenderer>();
            imageRectTransform = imageTransform.GetComponentInChildren<RectTransform>();
        }
        var data = gameObject.GetComponentInChildren<BatimentDataHolder>();
        if (data != null)
        {
            url = data.batiment.img_url;
        }
    }

    void Start()
    {
        if (!string.IsNullOrEmpty(url))
        {
            StartCoroutine(DownloadImage(url));
        }
    }

    IEnumerator DownloadImage(string MediaUrl)
    {
        UnityWebRequest request = UnityWebRequestTexture.GetTexture(MediaUrl);
        yield return request.SendWebRequest();
        if (request.isNetworkError || request.isHttpError)
        {
            Debug.Log(request.error);
        }
        else
        {
            Texture2D webTexture = ((DownloadHandlerTexture)request.downloadHandler).texture;
            Sprite webSprite = SpriteFromTexture2D(webTexture);
            img.sprite = webSprite;
        }
    }

    Sprite SpriteFromTexture2D(Texture2D texture)
    {
        var pixelsPerUnit = texture.height > texture.width ? texture.height / imageRectTransform.rect.height : texture.width / imageRectTransform.rect.width;

        return Sprite.Create(texture, new Rect(0.0f, 0.0f, texture.width, texture.height), new Vector2(0.5f, 0.5f), pixelsPerUnit);
    }
}
