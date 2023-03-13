# salsa-action

🚧 🏗️ this project is an ealy development stage 🏗️ 🚧

## Eco-system

### go

There are no pre-requisites for this ecosystem.

### jvm

#### gradle

Project must use gradle wrapper for the action to work.

`$cyclonedxVersion` = [CycloneDX Gradle Releases](https://github.com/CycloneDX/cyclonedx-gradle-plugin/releases/)

Add plugin to your `build.gradle` file:

```groovy
plugins {
    id("org.cyclonedx.bom") version $cyclonedxVersion
}
```

For more information, see the [CycloneDX Gradle Plugin](https://github.com/CycloneDX/cyclonedx-gradle-plugin) project.

#### maven

Project must use maven wrapper for the action to work.

`$cyclonedxVersion` [CycloneDX Maven Releases](https://github.com/CycloneDX/cyclonedx-maven-plugin/releases)

Add plugin to your `pom.xml` file:

```xml

<plugin>
    <groupId>org.cyclonedx</groupId>
    <artifactId>cyclonedx-maven-plugin</artifactId>
    <version>${cyclonedxVersion}</version>
</plugin>
```

For more information, see the [CycloneDX Maven Plugin](https://github.com/CycloneDX/cyclonedx-maven-plugin) project.

### Node

#### npm

There are no pre-requisites for this ecosystem.

#### yarn

Not supported yet.

### python

There are no pre-requisites for this ecosystem.

## Configuration

For more information, see [action.yaml](action.yaml).

# TDOD

* Keyless signing
* Sign container image 
  * attest container sbom to container image
* Support for other ecosystems