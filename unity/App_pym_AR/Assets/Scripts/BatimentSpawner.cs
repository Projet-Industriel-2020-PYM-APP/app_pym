using UnityEngine;

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
                var batiment = gameObject.GetComponent<Batiment>();
                if (batiment != null && batiment.Id == id)
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
        var TextGameObject = SpawnedObject.transform.GetChild(0).gameObject;
        TextMesh textMesh = TextGameObject.GetComponent<TextMesh>();
        textMesh.text = text;
        textMesh.characterSize = 10f / distance < 0.01f ? 10f / distance : 0.01f;
    }

    private void FillData(ParsedData data)
    {
        Batiment batiment = SpawnedObject.AddComponent<Batiment>();
        batiment.Id = data.id;
        batiment.Nom = data.text;
    }

    /// <summary>
    /// Spawn an object using Flutter postMessage.
    /// </summary>
    /// <param name="message">Message which is expected to be in json string.</param>
    public void FlutterSpawn(string message)
    {
        Debug.Log(message);
        ParsedMessage parsed = JsonUtility.FromJson<ParsedMessage>(message);

        Spawn(parsed.position, parsed.data.id);
        Color color = new Color32((byte)parsed.color.r, (byte)parsed.color.g, (byte)parsed.color.b, 255);
        Colorize(color);
        FillData(parsed.data);
        ChangeText(parsed.data.text, parsed.distance);
    }
}