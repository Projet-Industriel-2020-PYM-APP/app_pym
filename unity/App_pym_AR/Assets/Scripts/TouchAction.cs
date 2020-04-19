using UnityEngine;

public class TouchAction : MonoBehaviour
{
    [SerializeField]
    [Tooltip("Highlight material when touched.")]
    Color m_HighlightColor;

    /// <summary>
    /// Highlight material when touched.
    /// </summary>
    public Color HighlightColor
    {
        get { return m_HighlightColor; }
        set { m_HighlightColor = value; }
    }

    private Color _savedColor;
    private Transform _selection;

    // Update is called once per frame
    void Update()
    {
        for (int i = 0; i < Input.touchCount; ++i)
        {
            if (Input.GetTouch(i).phase.Equals(TouchPhase.Began))
            {
                Refresh();
                var ray = Camera.main.ScreenPointToRay(Input.GetTouch(i).position);
                if (Physics.Raycast(ray, out RaycastHit hit))
                {
                    OnHit(hit);
                }
            }
        }
    }

    private void Refresh()
    {
        if (_selection != null)
        {
            Colorize(_selection, _savedColor);
            _selection = null;
        }
    }

    private void OnHit(RaycastHit hit)
    {
        var selection = hit.transform;
        var selectedBatiment = selection.gameObject.GetComponent<Batiment>();
        if (selectedBatiment != null)
        {
            Colorize(selection, HighlightColor);
            UnityMessageManager.Instance.SendMessageToFlutter($"{selectedBatiment.Id}");
            _selection = selection;
        }
    }

    private void Colorize(Transform selection, Color color)
    {
        var selectedRenderer = selection.gameObject.GetComponent<SpriteRenderer>();
        if (selectedRenderer != null)
        {
            _savedColor = selectedRenderer.color;
            selectedRenderer.color = color;
        }
    }
}
