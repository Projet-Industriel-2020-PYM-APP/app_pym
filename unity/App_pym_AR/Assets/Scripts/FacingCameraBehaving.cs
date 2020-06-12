using UnityEngine;

public class FacingCameraBehaving : MonoBehaviour
{
    void Start()
    {
        transform.LookAt(Vector3.zero);
        transform.Rotate(0, 180, 0);
    }
}
