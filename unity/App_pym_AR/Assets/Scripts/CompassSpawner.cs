using UnityEngine;

public class CompassSpawner : MonoBehaviour
{
    [SerializeField]
    [Tooltip("Instantiates this prefab.")]
    GameObject m_CompassPrefab;

    /// <summary>
    /// The prefab to instantiate on touch.
    /// </summary>
    public GameObject CompassPrefab
    {
        get { return m_CompassPrefab; }
        set { m_CompassPrefab = value; }
    }

    /// <summary>
    /// The object instantiated as a result of a successful raycast intersection with a plane.
    /// </summary>
    public GameObject SpawnedObject { get; private set; }


    private void Spawn(ParsedPosition position)
    {
        Vector3 vect = new Vector3(position.x, position.y, position.z);
        SpawnedObject = Instantiate(CompassPrefab, vect, Quaternion.identity);
        SpawnedObject.SetActive(true);
    }

    private void Colorize(Color color)
    {
        SpawnedObject.GetComponent<SpriteRenderer>().color = color;
    }

    private void ChangeText(string text)
    {
        var TextGameObject = SpawnedObject.transform.GetChild(0).gameObject;
        TextGameObject.GetComponent<TextMesh>().text = text;
    }

    /// <summary>
    /// Spawn an object using Flutter postMessage.
    /// </summary>
    /// <param name="message">Message which is expected to be in json string.</param>
    public void FlutterSpawn(string message)
    {
        Debug.Log(message);
        ParsedMessage parsed = JsonUtility.FromJson<ParsedMessage>(message);

        Spawn(parsed.position);
        Color color = new Color32((byte)parsed.color.r, (byte)parsed.color.g, (byte)parsed.color.b, 255);
        Colorize(color);
        ChangeText(parsed.data.text);
    }
}