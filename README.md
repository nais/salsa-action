# salsa-action

🚧 🏗️ this project is an ealy development stage 🏗️ 🚧

## Ecosystems

An ecosystem describes the tooling used to build a project. The following ecosystems bellow are supported to generate a
Software Bill of Materials (SBOM).

Project is not required to use any of the tools listed below.
The action will attempt to generate an SBOM using the trivy scanner for a project not requiring any of the tools listed
below.

### go

There are no pre-requisites for this ecosystem.

### jvm

* gradle

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

* maven

Project must use maven wrapper for the action to work.

### Node

* npm

There are no pre-requisites for this ecosystem.

* yarn

Not supported yet.

### python

There are no pre-requisites for this ecosystem.

## Attestation

### Keys

* KMS: [go-kms.yaml](.github/workflows/go-kms.yaml)
* cosign.key: [go.yaml](.github/workflows/go.yaml)

### Keyless

* Google: [go-google.yaml](.github/workflows/go-google.yaml)
* GitHub: [go-github.yaml](.github/workflows/go-github.yaml)

Requires GitHub job permissions to be set.

```yaml
jobs:
  build:
    permissions:
      contents: 'read'
      id-token: 'write'
```

## Configuration

For more information, see [action.yaml](action.yaml).

# To Explore

* Sign container image
    * attest container sbom to container image
* Support for other ecosystems
* Support for other signing methods