# SQL Developer for Flatpack

## Requirements

* [Podman](https://podman.io/)
* [OpenJFX](https://gluonhq.com/products/javafx/) SDK 17.0.6 x64
* [SQL Developer for Other Platforms](https://www.oracle.com/database/sqldeveloper/technologies/download/) ZIP files.

## Instructions

```
make podman-build clean flatpak
```

Repo will be created on `repo` directory. To install from repo, do

```
flatpak remote-add --no-gpg-verify --user sqldeveloper repo
flatpak install org.oracle.sqldeveloper
```

To run, just search SQL Developer on Desktop Manager or run on terminal:

```
flatpak run org.oracle.sqldeveloper
```
