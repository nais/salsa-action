# salsa-action

## Eco-system

CycloneDX is a lightweight software bill-of-materials (SBOM) standard designed for use in application security contexts
and supply chain component analysis.

`cyclonedxVersion` = [CycloneDX GitHub Releases](https://github.com/CycloneDX/cyclonedx-gradle-plugin/releases/)

`byosbom` is where you can specify a generated bom file.

### go

There are no pre-requisites for this ecosystem.

### gradle

Add plugin to your `build.gradle` file:

```groovy
plugins {
    id("org.cyclonedx.bom") version $cyclonedxVersion
}
```

Project most use gradle wrapper for the action to work.

### maven

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

### npm

There are no pre-requisites for this ecosystem.

### python

There are no pre-requisites for this ecosystem.

