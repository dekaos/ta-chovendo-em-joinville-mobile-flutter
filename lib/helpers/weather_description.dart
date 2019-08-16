String weatherDescription (int code) {
  Map weatherDescription = Map();

  weatherDescription[200] = 'Chuva fraca';
  weatherDescription[201] = 'Chuva';
  weatherDescription[202] = 'Chuva forte';
  weatherDescription[210] = 'Temporal com raios';
  weatherDescription[211] = 'Temporal com trovoadas';
  weatherDescription[212] = 'Temporal com fortes trovoadas';
  weatherDescription[221] = 'Risco de Temporal';
  weatherDescription[230] = 'Temporal com leve garoa';
  weatherDescription[231] = 'Temporal com garoa';
  weatherDescription[232] = 'Temporal com garoa pesada';
  weatherDescription[300] = 'Garoa leve';
  weatherDescription[301] = 'Garoa';
  weatherDescription[302] = 'Forte garoa';
  weatherDescription[310] = 'Chuviscos';
  weatherDescription[311] = 'Garoa com chuva';
  weatherDescription[312] = 'Garoa intensa';
  weatherDescription[313] = 'Garoa com chuva';
  weatherDescription[314] = 'Chuva forte';
  weatherDescription[321] = 'Chuva';
  weatherDescription[500] = 'Chuva fraca';
  weatherDescription[501] = 'Chuva';
  weatherDescription[502] = 'Chuva intensa';
  weatherDescription[503] = 'Chuva forte';
  weatherDescription[504] = 'Chuva muito intensa';
  weatherDescription[511] = 'Chuva com risco de granizo';
  weatherDescription[520] = 'Chuva com relâmpagos';
  weatherDescription[521] = 'Chuva';
  weatherDescription[522] = 'Pancadas de chuva';
  weatherDescription[531] = 'Risco de chuva';
  weatherDescription[600] = 'Neve fraca';
  weatherDescription[601] = 'Neve';
  weatherDescription[602] = 'Neve intensa';
  weatherDescription[611] = 'Granizo';
  weatherDescription[612] = 'Chuva com granizo';
  weatherDescription[615] = 'Relâmpagos com chuva e neve';
  weatherDescription[616] = 'Chuva e neve';
  weatherDescription[620] = 'Relâmpagos e neve';
  weatherDescription[621] = 'Garoa com neve';
  weatherDescription[622] = 'Neve intensa com garoa';
  weatherDescription[701] = 'Nevoeiro';
  weatherDescription[711] = 'Fumaça';
  weatherDescription[721] = 'Leve neblina';
  weatherDescription[731] = 'Tempestade de areia';
  weatherDescription[741] = 'Nevoeiro';
  weatherDescription[751] = 'Areia';
  weatherDescription[761] = 'Poeira';
  weatherDescription[762] = 'Cinzas vulcânicas';
  weatherDescription[771] = 'Rajadas de vento';
  weatherDescription[781] = 'Tornado';
  weatherDescription[800] = 'Céu limpo';
  weatherDescription[801] = 'Algumas nuves';
  weatherDescription[802] = 'Nuvens esparsas';
  weatherDescription[803] = 'Nublado';
  weatherDescription[804] = 'Nuvens escuras';
  weatherDescription[900] = 'Tornado';
  weatherDescription[901] = 'Tempestade tropical';
  weatherDescription[902] = 'Furacão';
  weatherDescription[903] = 'Clima frio';
  weatherDescription[904] = 'Clima quente';
  weatherDescription[905] = 'Ventos';
  weatherDescription[906] = 'Chuva de pedra';
  weatherDescription[950] = 'Clima em configuração';
  weatherDescription[951] = 'Tempo calmo';
  weatherDescription[952] = 'Brisa leve';
  weatherDescription[953] = 'Brisa suave';
  weatherDescription[954] = 'Brisa moderada';
  weatherDescription[955] = 'Brisa fresca';
  weatherDescription[956] = 'Brisa forte';
  weatherDescription[957] = 'Vento forte';
  weatherDescription[958] = 'Ventania';
  weatherDescription[959] = 'Forte ventania';
  weatherDescription[960] = 'Tempestade';
  weatherDescription[961] = 'Tempestade violenta';
  weatherDescription[962] = 'Furacão';

  return weatherDescription[code];
}