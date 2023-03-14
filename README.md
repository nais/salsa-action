# salsa-action

🚧 🏗️ this project is an ealy development stage 🏗️ 🚧

## Ecosystems

An ecosystem describes the tooling used to build a project. The following ecosystems are supported to generate a
Software Bill of Materials (SBOM):

Project is not required to use any of the tools listed below. The action will attempt to generate an SBOM using the
trivy scanner for a project not requiring any of the tools listed below.

### go

There are no pre-requisites for this ecosystem other than the project must be a go module.

### jvm

#### gradle

Project must use gradle wrapper for the action to work.

`$cyclonedxVersion` = [CycloneDX Gradle Releases](https://github.com/CycloneDX/cyclonedx-gradle-plugin/releases/)

Add plugin to your `build.gradle` or `build.gradle.kts` file:

```groovy
plugins {
    id("org.cyclonedx.bom") version $cyclonedxVersion
}
```

No further configuration is required.

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

No further configuration is required.

For more information, see the [CycloneDX Maven Plugin](https://github.com/CycloneDX/cyclonedx-maven-plugin) project.

### Node

#### npm

There are no pre-requisites for this ecosystem other than the project must be a npm module.

#### yarn

Not supported yet.

### python

There are no pre-requisites for this ecosystem other than the project must be a python module.

## Configuration

For more information, see [action.yaml](action.yaml).

# To Explore

* Sign container image
    * attest container sbom to container image
* Support for other ecosystems