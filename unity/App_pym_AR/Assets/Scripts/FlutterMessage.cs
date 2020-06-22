using System;
using System.Collections.Generic;

[Serializable]
public class ParsedPosition
{
    public float x;
    public float y;
    public float z;
}

[Serializable]
public class ParsedColor
{
    public int r;
    public int g;
    public int b;
}

[Serializable]
public class ParsedMessage
{
    public ParsedColor color;
    public ParsedPosition position;
    public Batiment batiment;
    public float distance;
}