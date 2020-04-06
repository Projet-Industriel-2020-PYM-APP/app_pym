using UnityEngine;

public class ShowIndicator : MonoBehaviour
{
    [SerializeField]
    [Tooltip("Modify the visibility of this object.")]
    GameObject m_HidableObject;

    /// <summary>
    /// The object to hide or to show.
    /// </summary>
    public GameObject HidableObject
    {
        get { return m_HidableObject; }
        set { m_HidableObject = value; }
    }
    public void SetActive()
    {
        HidableObject.SetActive(true);
    }

    public void SetInactive()
    {
        HidableObject.SetActive(false);
    }
}
