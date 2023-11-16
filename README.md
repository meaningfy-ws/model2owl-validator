# UML Model Validator

This service allows you to assess the conformance of a **UML Model** with
the [SEMIC Style Guide](https://semiceu.github.io/style-guide/1.0.0/gc-conceptual-model-conventions.html). For each UML
guideline in the style guide, a set of rules have been implemented, which assess whether a UML model convention is
respected. These rules specify constraints on the structure, relationships, and properties within the model. The set of
rules employed during validation is
documented [here](https://meaningfy-ws.github.io/model2owl-docs/public-review/checkers/model2owl-checkers.html).

The content to validate can be provided as a **file** or a **URI reference**. Documentation on using the
Interoperability Test Bed is
available [here](https://www.itb.ec.europa.eu/docs/guides/latest/validatingRDF/index.html#step-6-use-the-validator).

This validator has 2 options available: basic and advanced. The difference between the two is the number of
configuration files. In the basic mode, only the namespaces are to be defined, while in advanced mode, multiple
configuration files must be defined. Check out the config_boilerplates folder in this repository to get the 
necessary configuration files for each mode.
