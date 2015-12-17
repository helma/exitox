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
- 9x9-matrix-html.rb (also displays pairwise similarities)

## Reports

    html/
    ├── 9x9matrix
    │   ├── 1,2,3-Trichloropropane - 1,2-Dichloropropane Assays.html
    │   ├── 1,2,3-Trichloropropane_-_1,2-Dichloropropane_Targets.html
    │   ├── 1,2,3-Trichloropropane - 2-Methylnaphthalene Assays.html
    │   ├── 1,2,3-Trichloropropane_-_2-Methylnaphthalene_Targets.html
    │   ├── 1,2,3-Trichloropropane - 2-Naphthol Assays.html
    │   ├── 1,2,3-Trichloropropane_-_2-Naphthol_Targets.html
    │   ├── 1,2,3-Trichloropropane - Dibromochloropropane Assays.html
    │   ├── 1,2,3-Trichloropropane_-_Dibromochloropropane_Targets.html
    │   ├── 1,2,3-Trichloropropane - Naphthalene Assays.html
    │   ├── 1,2,3-Trichloropropane_-_Naphthalene_Targets.html
    │   ├── 1,2,3-Trichloropropane - Vinyl acetate Assays.html
    │   ├── 1,2,3-Trichloropropane_-_Vinyl_acetate_Targets.html
    │   ├── 1,2,3-Trichloropropane - Vinyl butyrate Assays.html
    │   ├── 1,2,3-Trichloropropane_-_Vinyl_butyrate_Targets.html
    │   ├── 1,2,3-Trichloropropane - Vinyl propionate Assays.html
    │   ├── 1,2,3-Trichloropropane_-_Vinyl_propionate_Targets.html
    │   ├── 1,2-Dichloropropane - 2-Methylnaphthalene Assays.html
    │   ├── 1,2-Dichloropropane_-_2-Methylnaphthalene_Targets.html
    │   ├── 1,2-Dichloropropane - 2-Naphthol Assays.html
    │   ├── 1,2-Dichloropropane_-_2-Naphthol_Targets.html
    │   ├── 1,2-Dichloropropane - Dibromochloropropane Assays.html
    │   ├── 1,2-Dichloropropane_-_Dibromochloropropane_Targets.html
    │   ├── 1,2-Dichloropropane - Naphthalene Assays.html
    │   ├── 1,2-Dichloropropane_-_Naphthalene_Targets.html
    │   ├── 1,2-Dichloropropane - Vinyl acetate Assays.html
    │   ├── 1,2-Dichloropropane_-_Vinyl_acetate_Targets.html
    │   ├── 1,2-Dichloropropane - Vinyl butyrate Assays.html
    │   ├── 1,2-Dichloropropane_-_Vinyl_butyrate_Targets.html
    │   ├── 1,2-Dichloropropane - Vinyl propionate Assays.html
    │   ├── 1,2-Dichloropropane_-_Vinyl_propionate_Targets.html
    │   ├── 2-Methylnaphthalene - 2-Naphthol Assays.html
    │   ├── 2-Methylnaphthalene_-_2-Naphthol_Targets.html
    │   ├── 2-Methylnaphthalene - Vinyl acetate Assays.html
    │   ├── 2-Methylnaphthalene_-_Vinyl_acetate_Targets.html
    │   ├── 2-Methylnaphthalene - Vinyl butyrate Assays.html
    │   ├── 2-Methylnaphthalene_-_Vinyl_butyrate_Targets.html
    │   ├── 2-Methylnaphthalene - Vinyl propionate Assays.html
    │   ├── 2-Methylnaphthalene_-_Vinyl_propionate_Targets.html
    │   ├── 2-Naphthol - Vinyl acetate Assays.html
    │   ├── 2-Naphthol_-_Vinyl_acetate_Targets.html
    │   ├── 2-Naphthol - Vinyl butyrate Assays.html
    │   ├── 2-Naphthol_-_Vinyl_butyrate_Targets.html
    │   ├── 2-Naphthol - Vinyl propionate Assays.html
    │   ├── 2-Naphthol_-_Vinyl_propionate_Targets.html
    │   ├── Dibromochloropropane - 2-Methylnaphthalene Assays.html
    │   ├── Dibromochloropropane_-_2-Methylnaphthalene_Targets.html
    │   ├── Dibromochloropropane - 2-Naphthol Assays.html
    │   ├── Dibromochloropropane_-_2-Naphthol_Targets.html
    │   ├── Dibromochloropropane - Naphthalene Assays.html
    │   ├── Dibromochloropropane_-_Naphthalene_Targets.html
    │   ├── Dibromochloropropane - Vinyl acetate Assays.html
    │   ├── Dibromochloropropane_-_Vinyl_acetate_Targets.html
    │   ├── Dibromochloropropane - Vinyl butyrate Assays.html
    │   ├── Dibromochloropropane_-_Vinyl_butyrate_Targets.html
    │   ├── Dibromochloropropane - Vinyl propionate Assays.html
    │   ├── Dibromochloropropane_-_Vinyl_propionate_Targets.html
    │   ├── Naphthalene - 2-Methylnaphthalene Assays.html
    │   ├── Naphthalene_-_2-Methylnaphthalene_Targets.html
    │   ├── Naphthalene - 2-Naphthol Assays.html
    │   ├── Naphthalene_-_2-Naphthol_Targets.html
    │   ├── Naphthalene - Vinyl acetate Assays.html
    │   ├── Naphthalene_-_Vinyl_acetate_Targets.html
    │   ├── Naphthalene - Vinyl butyrate Assays.html
    │   ├── Naphthalene_-_Vinyl_butyrate_Targets.html
    │   ├── Naphthalene - Vinyl propionate Assays.html
    │   ├── Naphthalene_-_Vinyl_propionate_Targets.html
    │   ├── Vinyl acetate - Vinyl butyrate Assays.html
    │   ├── Vinyl_acetate_-_Vinyl_butyrate_Targets.html
    │   ├── Vinyl acetate - Vinyl propionate Assays.html
    │   ├── Vinyl_acetate_-_Vinyl_propionate_Targets.html
    │   ├── Vinyl propionate - Vinyl butyrate Assays.html
    │   └── Vinyl_propionate_-_Vinyl_butyrate_Targets.html
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
