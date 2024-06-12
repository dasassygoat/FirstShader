Shader "Holistic/MyFirstShader"
{
    Properties
    {
        _myColor ("Color", Color) = (1, 1, 1, 1)
        _myNormalColor ("Normal Color", Color) = (1, 1, 1, 1)
        _myEmissionColor ("Emission Color", Color) = (1, 1, 1, 1)
    }

    SubShader
    {
        CGPROGRAM
        #pragma surface surf Lambert

        struct Input
        {
            float2 uvMainText;
        };

        fixed4 _myColor;
        fixed4 _myEmissionColor;
        fixed4 _myNormalColor;

        void surf(Input IN, inout SurfaceOutput o)
        {
            o.Albedo = _myColor.rgb;
            o.Emission = _myEmissionColor.rgb;
            o.Normal = _myNormalColor;
        }
        ENDCG
    }
    Fallback "Diffuse"
}