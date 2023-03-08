# salsa-action

🚧 🏗️ this project is an ealy development stage 🏗️ 🚧

## Eco-system

CycloneDX is a lightweight software bill-of-materials (SBOM) standard designed for use in application security contexts
and supply chain component analysis.

`byosbom` is where you can specify a generated bom file.

### go

There are no pre-requisites for this ecosystem.

### jvm

#### gradle

`$cyclonedxVersion` = [CycloneDX Gradle Releases](https://github.com/CycloneDX/cyclonedx-gradle-plugin/releases/)

Add plugin to your `build.gradle` file:

```groovy
plugins {
    id("org.cyclonedx.bom") version $cyclonedxVersion
}
```

Project most use gradle wrapper for the action to work.

#### maven

`$cyclonedxVersion` [CycloneDX Maven Releases](https://github.com/CycloneDX/cyclonedx-maven-plugin/releases)

Add plugin to your `pom.xml` file:

```xml

<plugin>
    <groupId>org.cyclonedx</groupId>
    <artifactId>cyclonedx-maven-plugin</artifactId>
    <version>${cyclonedxVersion}</version>
</plugin>
```

Project most use maven wrapper for the action to work.

For more information, see the [CycloneDX Maven Plugin](https://github.com/CycloneDX/cyclonedx-maven-plugin) project.

### Node

#### npm

There are no pre-requisites for this ecosystem.

#### yarn

Not supported yet.

### python

There are no pre-requisites for this ecosystem.

