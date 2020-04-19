using System;

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
public class ParsedData
{
    public int id;
    public string text;
}

[Serializable]
public class ParsedMessage
{
    public ParsedColor color;
    public ParsedPosition position;
    public ParsedData data;
}
