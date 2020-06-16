using UnityEngine;
using TMPro;

public class BatimentDataHolder : MonoBehaviour
{
    public Batiment batiment;
}

public class BatimentSpawner : MonoBehaviour
{
    [SerializeField]
    [Tooltip("Instantiates this prefab.")]
    GameObject m_PlacedPrefab;

    /// <summary>
    /// The prefab to instantiate on touch.
    /// </summary>
    public GameObject PlacedPrefab
    {
        get { return m_PlacedPrefab; }
        set { m_PlacedPrefab = value; }
    }

    /// <summary>
    /// The object instantiated as a result of a successful raycast intersection with a plane.
    /// </summary>
    public GameObject SpawnedObject { get; private set; }


    private void Spawn(ParsedPosition position, int id)
    {
        Vector3 vect = new Vector3(position.x, position.y, position.z);
        GameObject[] gameObjects = GameObject.FindGameObjectsWithTag("SpawnedBatiment");
        if (gameObjects.Length != 0)
        {
            foreach (var gameObject in gameObjects)
            {
                var data = gameObject.GetComponent<BatimentDataHolder>();
                if (data != null && data.batiment.id == id)
                {
                    Destroy(gameObject);
                }
            }
        }
        SpawnedObject = Instantiate(PlacedPrefab, vect, Quaternion.identity);
        SpawnedObject.tag = "SpawnedBatiment";
        SpawnedObject.SetActive(true);
    }

    private void Colorize(Color color) {
        SpawnedObject.GetComponent<SpriteRenderer>().color = color;
    }

    /// <summary>
    /// Change the text of the object.
    /// </summary>
    /// <param name="text">Title of the building</param>
    /// <param name="distance">Distance between the camera and the building in meter</param>
    private void ChangeText(string text, float distance)
    {
        
        var titleGameObject = SpawnedObject.transform.Find("Title");
        if (titleGameObject != null)
        {
            TextMeshPro textMesh = titleGameObject.GetComponentInChildren<TextMeshPro>();
            textMesh.text = text;
        }
        var distanceGameObject = SpawnedObject.transform.Find("Distance");
        if (distanceGameObject != null)
        {
            TextMeshPro textMesh = distanceGameObject.GetComponentInChildren<TextMeshPro>();
            if (distance < 2000.0f)
            {
                textMesh.text = $"{distance} m";
            } else
            {
                textMesh.text = $"{(distance / 1000.0f):0.00} km";
            }
        }
    }

    private void AddBatimentComponent(Batiment batiment)
    {
        var batimentComponent = SpawnedObject.AddComponent<BatimentDataHolder>();
        batimentComponent.batiment = batiment;
    }

    private void AddImageLoaderComponent()
    {
        SpawnedObject.AddComponent<LoadImageFromUrl>();
    }

    /// <summary>
    /// Spawn an object using Flutter postMessage.
    /// </summary>
    /// <param name="message">Message which is expected to be in json string.</param>
    public void FlutterSpawn(string message)
    {
        Debug.Log(message);
        ParsedMessage parsed = JsonUtility.FromJson<ParsedMessage>(message);

        Spawn(parsed.position, parsed.batiment.id);
        Color color = new Color32((byte)parsed.color.r, (byte)parsed.color.g, (byte)parsed.color.b, 150);
        Colorize(color);
        AddBatimentComponent(parsed.batiment);
        var batimentComponent = SpawnedObject.GetComponent<BatimentDataHolder>();
        if (!string.IsNullOrEmpty(batimentComponent.batiment.img_url))
        {
            AddImageLoaderComponent();
        }
        ChangeText(batimentComponent.batiment.nom, parsed.distance);
    }
}