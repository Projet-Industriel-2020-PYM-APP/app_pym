using UnityEngine;

public class CenterRaycastAction : MonoBehaviour
{
    private Transform _selection;

    // Update is called once per frame
    void Update()
    {
        Refresh();
        var ray = Camera.main.ViewportPointToRay(new Vector3(0.5f, 0.5f, 0));
        if (Physics.Raycast(ray, out RaycastHit hit))
        {
            OnHit(hit);
        }
    }

    private void Refresh()
    {
        if (_selection != null)
        {
            SwitchVisibility(_selection, false);
            _selection = null;
        }
    }

    private void OnHit(RaycastHit hit)
    {
        var selection = hit.transform;
        var selectedBatiment = selection.gameObject.GetComponentInChildren<BatimentDataHolder>();
        if (selectedBatiment != null)
        {
            SwitchVisibility(selection, true);
            _selection = selection;
        }
    }

    private void SwitchVisibility(Transform selection, bool isVisible)
    {
        var selectedSpriteRenderer = selection.gameObject.GetComponentInChildren<SpriteRenderer>();

        var titleGameObject = selection.Find("Title");
        var distanceGameObject = selection.Find("Distance");
        if (titleGameObject != null && distanceGameObject != null)
        {
            var titleMeshRenderer = titleGameObject.GetComponentInChildren<MeshRenderer>();
            var distanceMeshRenderer = distanceGameObject.GetComponentInChildren<MeshRenderer>();
            if (selectedSpriteRenderer != null && titleMeshRenderer != null && distanceMeshRenderer != null)
            {
                selectedSpriteRenderer.enabled = isVisible;
                titleMeshRenderer.enabled = isVisible;
                distanceMeshRenderer.enabled = isVisible;
            }
        }
    }
}
