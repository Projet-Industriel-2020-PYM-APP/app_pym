using UnityEngine;

public class FacingCameraBehaving : MonoBehaviour
{
    void Start()
    {
        transform.LookAt(Vector3.zero);
    }
}
