plugins {
    // Good practice to have some standard tasks like clean, assemble, build
    id("base")
    // Apply the Typst plugin
    id("de.infolektuell.typst") version "0.4.2"
}

// The release tag for the Typst version to be used, defaults to latest stable release on GitHub
typst.version = "v0.12.0"

// The source sets container
typst.sourceSets {
    // Sources for documents intended for web publishing in src/web folder
    val main by registering {
        // The files to compile (without .typ extension)
        documents = listOf("adhs-krimi-2024")
        // Values set in this map are passed to Typst as --input options
        inputs.put("version", version.toString())
    }
  }
