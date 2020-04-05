using System;
using UnityEngine.SceneManagement;

/// <summary>
/// Game manager.
/// </summary>
[Serializable]
public class GameManager : Singleton<GameManager>
{

    /// <summary>
    /// Awake this instance.
    /// </summary>
    void Awake()
    {
        DontDestroyOnLoad(gameObject);
    }

    /// <summary>
    /// Reloads the game scene.
    /// </summary>
    /// <param name="_">Message.</param>
	public void Reload(string _)
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
    }
}
