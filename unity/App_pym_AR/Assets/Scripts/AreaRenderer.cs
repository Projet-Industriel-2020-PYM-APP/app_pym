using UnityEngine;

[RequireComponent(typeof(LineRenderer))]
public class AreaRenderer : MonoBehaviour
{
    public int vertexCount = 50;
    public float lineWidth = 0.2f;
    public float radius;

    private LineRenderer lineRenderer;

    private void Awake()
    {
        lineRenderer = GetComponent<LineRenderer>();
        CreateCircle();
    }

    private void CreateCircle()
    {
        lineRenderer.widthMultiplier = lineWidth;

        float deltaTheta = (2f * Mathf.PI) / vertexCount;
        float theta = 0f;

        lineRenderer.positionCount = vertexCount;
        for (int i = 0; i < lineRenderer.positionCount; i++)
        {
            Vector3 pos = new Vector3(radius * Mathf.Cos(theta), 0f, radius * Mathf.Sin(theta));
            lineRenderer.SetPosition(i, pos);
            theta += deltaTheta;
        }
    }

#if UNITY_EDITOR
    private void OnDrawGizmos()
    {
        float deltaTheta = (2f * Mathf.PI) / vertexCount;
        float theta = 0f;

        Vector3 oldPos = Vector3.zero;
        for (int i = 0; i < vertexCount+1; i++)
        {
            Vector3 pos = new Vector3(radius * Mathf.Cos(theta), 0f, radius * Mathf.Sin(theta));
            Gizmos.DrawLine(oldPos, transform.position + pos);
            oldPos = transform.position + pos;
            theta += deltaTheta;
        }
    }
#endif
}