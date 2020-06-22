#!/bin/sh
# Remove existing
rm ./arcore_client/arcore_client.aar
rm ./unityandroidpermissions/unityandroidpermissions.aar
rm ./UnityARCore/UnityARCore.aar
rm ./unity-classes/unity-classes.jar

# Copy libs
cp ./UnityExport/libs/arcore_client.aar ./arcore_client/arcore_client.aar
cp ./UnityExport/libs/unityandroidpermissions.aar ./unityandroidpermissions/unityandroidpermissions.aar
cp ./UnityExport/libs/UnityARCore.aar ./UnityARCore/UnityARCore.aar
cp ./UnityExport/libs/unity-classes.jar ./unity-classes/unity-classes.jar

# Import libs (replace some lines in ./UnityExport/build.gradle)
sed -i "s/implementation[(]name: 'arcore_client', ext:'aar'[)]/implementation project(':arcore_client')/" ./UnityExport/build.gradle
sed -i "s/implementation[(]name: 'unityandroidpermissions', ext:'aar'[)]/implementation project(':unityandroidpermissions')/" ./UnityExport/build.gradle
sed -i "s/implementation[(]name: 'UnityARCore', ext:'aar'[)]/implementation project(':UnityARCore')/" ./UnityExport/build.gradle
sed -i "$ d" ./UnityExport/build.gradle
sed -i "$ d" ./UnityExport/build.gradle
cat ./buffer.txt >> ./UnityExport/build.gradle