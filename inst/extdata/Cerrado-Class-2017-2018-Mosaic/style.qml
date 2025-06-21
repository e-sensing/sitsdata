<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis maxScale="0" styleCategories="AllStyleCategories" version="3.22.4-Białowieża" minScale="1e+08" hasScaleBasedVisibilityFlag="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal mode="0" fetchMode="0" enabled="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <customproperties>
    <Option type="Map">
      <Option value="false" name="WMSBackgroundLayer" type="QString"/>
      <Option value="false" name="WMSPublishDataSourceUrl" type="QString"/>
      <Option value="0" name="embeddedWidgets/count" type="QString"/>
    </Option>
  </customproperties>
  <pipe-data-defined-properties>
    <Option type="Map">
      <Option value="" name="name" type="QString"/>
      <Option name="properties"/>
      <Option value="collection" name="type" type="QString"/>
    </Option>
  </pipe-data-defined-properties>
  <pipe>
    <provider>
      <resampling zoomedInResamplingMethod="nearestNeighbour" enabled="false" zoomedOutResamplingMethod="nearestNeighbour" maxOversampling="2"/>
    </provider>
    <rasterrenderer band="1" type="paletted" alphaBand="-1" nodataColor="" opacity="1">
      <rasterTransparency/>
      <minMaxOrigin>
        <limits>None</limits>
        <extent>WholeRaster</extent>
        <statAccuracy>Estimated</statAccuracy>
        <cumulativeCutLower>0.02</cumulativeCutLower>
        <cumulativeCutUpper>0.98</cumulativeCutUpper>
        <stdDevFactor>2</stdDevFactor>
      </minMaxOrigin>
      <colorPalette>
         <paletteEntry  value="1" color="#F0B27A" label="Annual_Crop" alpha="255"/>
         <paletteEntry  value="3" color="#a2d43f" label="Cerrado" alpha="255"/>
         <paletteEntry  value="4" color="#DBEBD8" label="Nat_NonVeg" alpha="255"/>
         <paletteEntry  value="6" color="#FAD12D" label="Pasture" alpha="255"/>
         <paletteEntry  value="7" color="#935116" label="Perennial_Crop" alpha="255"/>
         <paletteEntry  value="8" color="#1abc9c" label="Silviculture" alpha="255"/>
         <paletteEntry  value="9" color="#D98880" label="Sugarcane" alpha="255"/>
         <paletteEntry  value="10" color="#2980B9" label="Water" alpha="255"/>
     </colorPalette>
      <colorramp name="[source]" type="randomcolors">
        <Option/>
      </colorramp>
    </rasterrenderer>
    <brightnesscontrast gamma="1" contrast="0" brightness="0"/>
    <huesaturation invertColors="0" colorizeGreen="128" colorizeStrength="100" colorizeRed="255" saturation="0" colorizeBlue="128" colorizeOn="0" grayscaleMode="0"/>
    <rasterresampler maxOversampling="2"/>
    <resamplingStage>resamplingFilter</resamplingStage>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
