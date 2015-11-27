require 'yaml'

data = {
  "Vicinale Halogenide" => {
    "1,2,3-Trichloropropane" => {
      :uri => "http://aop.in-silico.ch/cid/7285",
      :targets => {
        true => [
          {
          "Target GeneID" =>  348019627,
          "Assay IDs" =>  [743079],
          }
        ],
        false => [
          {
          "Target GeneID" =>  10092619,
          "Assay IDs" =>  [445],
          },{
          "Target GeneID" =>  2499604,
          "Assay IDs" =>  [530],
          },{
          "Target GeneID" =>  119389684,
          "Assay IDs" =>  [584, 585]
          }
=begin
          "Target GeneID" =>  92096784
          "Assay IDs" =>  596
          "Target GeneID" =>  84028058
          "Assay IDs" =>  605
          "Target GeneID" =>  159162802
          "Assay IDs" =>  875 892
          "Target GeneID" =>  3290016
          Assay IDs" =>  880
          Target GeneID" =>  33946324
          Assay IDs" =>  880
          Target GeneID" =>  317373425
          Assay IDs" =>  881
          Target GeneID" =>  13435386
          Assay IDs" =>  884 885
          Target GeneID" =>  122921310
          Assay IDs" =>  886 893
          Target GeneID" =>  122921311
          Assay IDs" =>  886 893
          Target GeneID" =>  1832253
          Assay IDs" =>  887
          Target GeneID" =>  1730092
          Assay IDs" =>  889
          Target GeneID" =>  31542939
          Assay IDs" =>  894
          Target GeneID" =>  15431328
          Assay IDs" =>  900
          Target GeneID" =>  120407068
          Assay IDs" =>  902 924
          Target GeneID" =>  21392848
          Assay IDs" =>  912
          Target GeneID" =>  4504349
          Assay IDs" =>  925
          Target GeneID" =>  38016895
          Assay IDs" =>  926 938
          Target GeneID" =>  66932916
          Assay IDs" =>  995
          Target GeneID" =>  30582681
          Assay IDs" =>  1030
          Target GeneID" =>  154426292
          Assay IDs" =>  1452
          Target GeneID" =>  44888968
          Assay IDs" =>  1457
          Target GeneID" =>  10937869
          Assay IDs" =>  1458
          Target GeneID" =>  189491771
          Assay IDs" =>  1469 1469 1479 1479 588545 588545 588547 588547
          Target GeneID" =>  90903231
          Assay IDs" =>  1471
          Target GeneID" =>  281307097
          Assay IDs" =>  1476 1478
          Target GeneID" =>  496369
          Assay IDs" =>  2101
          Target GeneID" =>  757912
          Assay IDs" =>  2107
          Target GeneID" =>  119393891
          Assay IDs" =>  2112
          Target GeneID" =>  32879895
          Assay IDs" =>  2120
          Target GeneID" =>  6980812
          Assay IDs" =>  2517
          Target GeneID" =>  188536040
          Assay IDs" =>  2546 2551
          Target GeneID" =>  282403581
          Assay IDs" =>  2549
          Target GeneID" =>  20150581
          Assay IDs" =>  485290
          Target GeneID" =>  348019627
          Assay IDs" =>  588513 588513 588514 588514 743069 743069 743075 743075 743077 743077 743078 743078 743079 743080 743080 743091 743091
          Target GeneID" =>  124375976
          Assay IDs" =>  588515 588515 588516 588516 743035 743035 743036 743036 743040 743040 743042 743042 743053 743053 743054 743054 743063 743063
          Target GeneID" =>  325495553
          Assay IDs" =>  588526 588527 588527 743217 743217 743220 743220 743239 743239 743240 743240
          Target GeneID" =>  311348376
          Assay IDs" =>  588532 588532 588533 588533 720691 720691 720692 720692 720719 720719 720725 720725
          Target GeneID" =>  216409690
          Assay IDs" =>  588534 588534 588535 743212 743212 743215 743226 743226 743227 743227
          Target GeneID" =>  216409692
          Assay IDs" =>  588536 588536 588537 588537 743094 743094 743140 743140 743191 743199 743199
          Target GeneID" =>  216409708
          Assay IDs" =>  588541 588541 588543 588543 743222 743222 743223 743223 743241 743241 743242 743242
          Target GeneID" =>  325495497
          Assay IDs" =>  588544 588544 588546 588546 1159527 1159531 1159531
          Target GeneID" =>  325651834
          Assay IDs" =>  588834 588834
          Target GeneID" =>  269849759
          Assay IDs" =>  651631 651631 651743 651743 720552 720552
          Target GeneID" =>  296439460
          Assay IDs" =>  651632 651632 720516 720516
          Target GeneID" =>  20149576
          Assay IDs" =>  651741 651741 720636 720636 743202 743202 743219 743219
          Target GeneID" =>  34577122
          Assay IDs" =>  651749 651749
          Target GeneID" =>  5702233
          Assay IDs" =>  651751 651751
          Target GeneID" =>  25952111
          Assay IDs" =>  651757
          Target GeneID" =>  51095037
          Assay IDs" =>  651777 651777 743085 743085 743122 743122
          Target GeneID" =>  3041727
          Assay IDs" =>  651778 651778
          Target GeneID" =>  49066040
          Assay IDs" =>  651802
          Target GeneID" =>  325495557
          Assay IDs" =>  720659 720659
          Target GeneID" =>  399498506
          Assay IDs" =>  743065 743065 743066 743066 743067 743067
          Target GeneID" =>  119597822
          Assay IDs" =>  743083 743083 743139 743139
          Target GeneID" =>  4504517
          Assay IDs" =>  743210 743210 743228 743228
          Target GeneID" =>  119626539
          Assay IDs" =>  1159509 1159509 1159518 1159518
          Target GeneID" =>  119611100
          Assay IDs" =>  1159516 1159516 1159519 1159519
          Target GeneID" =>  15928672
          Assay IDs" =>  1159521 1159521 1159523
          Target GeneID" =>  119627033
          Assay IDs" =>  1159528 1159528
          Target GeneID" =>  325495463
          Assay IDs" =>  1159552 1159552 1159553 1159553 1159555 1159555
=end
        ],
      }
    },
    "1,2-Dichloropropane" => {
      :uri => "http://aop.in-silico.ch/cid/6564",
    },
    "Dibromochloropropane" => {
      :uri => "http://aop.in-silico.ch/cid/7280",
    },
  },
  "Aromaten" => {
    "Naphthalene" => {
      :uri => "http://aop.in-silico.ch/cid/931",
    },
    "2-Methylnaphthalene" => {
      :uri => "http://aop.in-silico.ch/cid/7055",
    },
    "2-Naphthol" => {
      :uri => "http://aop.in-silico.ch/cid/8663",
    },
  },
  "Ester" => {
    "Vinyl acetate" => {
      :uri => "http://aop.in-silico.ch/cid/7904",
    },
    "Vinyl propionate" => {
      :uri => "http://aop.in-silico.ch/cid/7750",
    },
    "Vinyl butyrate" => {
      :uri => "http://aop.in-silico.ch/cid/3124",
    },
  },
}

print data.to_yaml
