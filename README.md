# Bulk FSH using Jinja2 Templates and Python

This repo contains a worked example using Python to generate bulk FHIR Shorthand (FSH) instance files. The variables are replaced using Jinja2. 

## How to Use

The `she-process` iPython Jupyter notebook shows a simple example that generates multi-language names with patient records. The `she-process` Python script can be used to automate for testing as follows:
```
# creates records for 1000 patients with Russian names.
./she-process ru 1000
```

The output must now be run through Sushi to create FHIR JSON. The target IG for this tool has several dependencies. These can be seen in the `sushi-config.yaml`. For now, the dependency resolution for a recent-enough version of the IG is not working, so the FSH files must be copied over whereas the other dependencies are found by Sushi.

```
cp ~/src/github.com/WorldHealthOrganization/ddcc/input/fsh/* input/fsh/
```

TODO: Fix resolution.

Now, run Sushi to generate the files. Sushi is in `FSH-only` mode.
```
sushi
$ sushi
info  path-to-fsh-defs defaulted to current working directory
info  Running SUSHI v2.0.1 (implements FHIR Shorthand specification v1.2.0)
info  Arguments:
info    /Users/richard/src/github.com/intrahealth/bulk-fsh
info  No output path specified. Output to .
info  Using configuration file: /Users/richard/src/github.com/intrahealth/bulk-fsh/sushi-config.yaml
warn  The FSHOnly property is set to true, so no output specific to IG creation will be generated. The following properties are unused and only relevant for IG creation: copyrightYear.
  File: sushi-config.yaml
info  Importing FSH text...
info  Preprocessed 1020 documents with 14 aliases.
info  Imported 33 definitions and 9060 instances.
info  Checking local cache for hl7.fhir.uv.ips#1.0.0...
info  Found hl7.fhir.uv.ips#1.0.0 in local cache.
info  Loaded package hl7.fhir.uv.ips#1.0.0
info  Checking local cache for hl7.fhir.uv.sdc#current...
info  Found hl7.fhir.uv.sdc#current in local cache.
info  Checking local cache for ihe.mhd.fhir#current...
info  Found ihe.mhd.fhir#current in local cache.
info  Checking local cache for hl7.fhir.r4.core#4.0.1...
info  Found hl7.fhir.r4.core#4.0.1 in local cache.
info  Loaded package hl7.fhir.r4.core#4.0.1
(node:58422) Warning: Accessing non-existent property 'INVALID_ALT_NUMBER' of module exports inside circular dependency
(Use `node --trace-warnings ...` to show where the warning was created)
(node:58422) Warning: Accessing non-existent property 'INVALID_ALT_NUMBER' of module exports inside circular dependency
info  Loaded package ihe.mhd.fhir#current
info  Loaded package hl7.fhir.uv.sdc#current
info  Converting FSH to FHIR resources...
info  Converted 26 FHIR StructureDefinitions.
info  Converted 4 FHIR CodeSystems.
info  Converted 5 FHIR ValueSets.
info  Converted 9060 FHIR instances.
info  Exporting FHIR resources as JSON...
info  Exported 8089 FHIR resources as JSON.
info  Exporting FSH definitions only. No IG related content will be exported.

╔════════════════════════ SUSHI RESULTS ══════════════════════════╗
║ ╭───────────────┬──────────────┬──────────────┬───────────────╮ ║
║ │    Profiles   │  Extensions  │   Logicals   │   Resources   │ ║
║ ├───────────────┼──────────────┼──────────────┼───────────────┤ ║
║ │      20       │      4       │      2       │       0       │ ║
║ ╰───────────────┴──────────────┴──────────────┴───────────────╯ ║
║ ╭────────────────────┬───────────────────┬────────────────────╮ ║
║ │      ValueSets     │    CodeSystems    │     Instances      │ ║
║ ├────────────────────┼───────────────────┼────────────────────┤ ║
║ │         5          │         4         │        9060        │ ║
║ ╰────────────────────┴───────────────────┴────────────────────╯ ║
║                                                                 ║
╠═════════════════════════════════════════════════════════════════╣
║ Looks like you are casting about.      0 Errors       1 Warning ║
╚═════════════════════════════════════════════════════════════════╝
```

The warning can be ignored.

## Hints
* If customizing the runtime scripts from the notebook, regenerate the Python script.
```
jupyter nbconvert --to script she-process.ipynb
chmod +x she-process.py
```
* If non-ASCII characters are used in the filename, Sushi will error with: "The string "Example-يصدق83" does not represent a valid FHIR id. FHIR ids may contain any combination of upper- or lower-case ASCII letters ('A'..'Z', and 'a'..'z'), numerals ('0'..'9'), '-' and '.', with a length limit of 64 characters."
* For substitutions the vars must not include a `.`, ie `person-name` works, but not `person.name`. This is a limitation in Python. There is an example in the `old` folder of how to use such vars.

## Why Not Use Synthea?

Synthea is great and provides a full, realistic patient history of time-series medical records. The use case this tool is developed for uses Questionnaire Responses of a profiled Implementation Guide. Synthea does not support IGs or Questionnaire Responses. This tool is only for quick prototyping on IGs, based on FSH, and not realistic medical histories, for which one should turn to Synthea.

