using System;
using System.Collections.Generic;

[Serializable]
public class Batiment
{
    public int id;
    public string nom;
    public int nbEtage;
    public string description;
    public bool accesHandicape;
    public string url;
    public string adresse;
    public float latitude;
    public float longitude;
    public bool isVisibleAR;
    public List<Entreprise> entreprises;
}
