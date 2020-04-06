using System;
using UnityEngine;

public class UnityMessageManager : MonoBehaviour
{
    public static UnityMessageManager Instance { get; private set; }

    static UnityMessageManager()
    {
        GameObject go = new GameObject("UnityMessageManager");
        DontDestroyOnLoad(go);
        Instance = go.AddComponent<UnityMessageManager>();
    }

    public void SendMessageToFlutter(string message)
    {
#if UNITY_ANDROID
        try
        {
            AndroidJavaClass jc = new AndroidJavaClass("com.rexraphael.flutterunitywidget.UnityUtils");
            jc.CallStatic("onUnityMessage", message);
        }
        catch (Exception e)
        {
            print(e.Message);
        }
#elif UNITY_IOS && !UNITY_EDITOR
            NativeAPI.onUnityMessage(message);
#endif
    }
}
