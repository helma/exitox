# ExiTox PubChem Analysis

## Data

- halogenide.yaml
- aromaten.yaml
- ester.yaml

## Assay Metadata

- aid2name.yaml
- aid2metadata.yaml

## Analysis

Create HTML reports

- group-internal-html.rb
- group-comparison-html.rb 

## Reports

    html/
    ├── Aromaten
    │   ├── 2-Methylnaphthalene_-_2-Naphthol_Assays.html
    │   ├── 2-Methylnaphthalene_-_2-Naphthol_Targets.html
    │   ├── Naphthalene_-_2-Methylnaphthalene_Assays.html
    │   ├── Naphthalene_-_2-Methylnaphthalene_Targets.html
    │   ├── Naphthalene_-_2-Naphthol_Assays.html
    │   └── Naphthalene_-_2-Naphthol_Targets.html
    ├── Ester
    │   ├── Vinyl_acetate_-_Vinyl_butyrate_Assays.html
    │   ├── Vinyl_acetate_-_Vinyl_butyrate_Targets.html
    │   ├── Vinyl_acetate_-_Vinyl_propionate_Assays.html
    │   ├── Vinyl_acetate_-_Vinyl_propionate_Targets.html
    │   ├── Vinyl_propionate_-_Vinyl_butyrate_Assays.html
    │   └── Vinyl_propionate_-_Vinyl_butyrate_Targets.html
    ├── Groups
    │   ├── Aromaten_-_Ester_Assays.html
    │   ├── Aromaten_-_Ester_Targets.html
    │   ├── Vicinale_Halogenide_-_Aromaten_Assays.html
    │   ├── Vicinale_Halogenide_-_Aromaten_Targets.html
    │   ├── Vicinale_Halogenide_-_Ester_Assays.html
    │   └── Vicinale_Halogenide_-_Ester_Targets.html
    └── Vicinale_Halogenide
        ├── 1,2,3-Trichloropropane_-_1,2-Dichloropropane_Assays.html
        ├── 1,2,3-Trichloropropane_-_1,2-Dichloropropane_Targets.html
        ├── 1,2,3-Trichloropropane_-_Dibromochloropropane_Assays.html
        ├── 1,2,3-Trichloropropane_-_Dibromochloropropane_Targets.html
        ├── 1,2-Dichloropropane_-_Dibromochloropropane_Assays.html
        └── 1,2-Dichloropropane_-_Dibromochloropropane_Targets.html

## Obsolete

Ruby scripts for analysis, results are stored in YAML

- \*-summary.\*: Nr of assays and similarities
- \*-aids.\*: PubChem assay IDs
- \*-names.\*: PubChem assay names
- \*-genes.\*: Gene IDs and names

### Comparisons

- within groups: group-internal-\*
- between groups: group-comparison-\*
