import 'dream_world.dart';
import 'home.dart';

class Versions {
  GenerationI? generationI;
  GenerationIi? generationIi;
  GenerationIii? generationIii;
  GenerationIv? generationIv;
  GenerationV? generationV;
  GenerationVi? generationVi;
  GenerationVii? generationVii;
  GenerationViii? generationViii;

  Versions(
      {this.generationI,
      this.generationIi,
      this.generationIii,
      this.generationIv,
      this.generationV,
      this.generationVi,
      this.generationVii,
      this.generationViii});

  Versions.fromJson(Map<String, dynamic> json) {
    generationI = json['generation-i'] != null
        ? GenerationI.fromJson(json['generation-i'])
        : null;
    generationIi = json['generation-ii'] != null
        ? GenerationIi.fromJson(json['generation-ii'])
        : null;
    generationIii = json['generation-iii'] != null
        ? GenerationIii.fromJson(json['generation-iii'])
        : null;
    generationIv = json['generation-iv'] != null
        ? GenerationIv.fromJson(json['generation-iv'])
        : null;
    generationV = json['generation-v'] != null
        ? GenerationV.fromJson(json['generation-v'])
        : null;
    generationVi = json['generation-vi'] != null
        ? GenerationVi.fromJson(json['generation-vi'])
        : null;
    generationVii = json['generation-vii'] != null
        ? GenerationVii.fromJson(json['generation-vii'])
        : null;
    generationViii = json['generation-viii'] != null
        ? GenerationViii.fromJson(json['generation-viii'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (generationI != null) {
      data['generation-i'] = generationI!.toJson();
    }
    if (generationIi != null) {
      data['generation-ii'] = generationIi!.toJson();
    }
    if (generationIii != null) {
      data['generation-iii'] = generationIii!.toJson();
    }
    if (generationIv != null) {
      data['generation-iv'] = generationIv!.toJson();
    }
    if (generationV != null) {
      data['generation-v'] = generationV!.toJson();
    }
    if (generationVi != null) {
      data['generation-vi'] = generationVi!.toJson();
    }
    if (generationVii != null) {
      data['generation-vii'] = generationVii!.toJson();
    }
    if (generationViii != null) {
      data['generation-viii'] = generationViii!.toJson();
    }
    return data;
  }
}

class GenerationI {
  RedBlue? redBlue;
  RedBlue? yellow;

  GenerationI({this.redBlue, this.yellow});

  GenerationI.fromJson(Map<String, dynamic> json) {
    redBlue =
        json['red-blue'] != null ? RedBlue.fromJson(json['red-blue']) : null;
    yellow = json['yellow'] != null ? RedBlue.fromJson(json['yellow']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (redBlue != null) {
      data['red-blue'] = redBlue!.toJson();
    }
    if (yellow != null) {
      data['yellow'] = yellow!.toJson();
    }
    return data;
  }
}

class RedBlue {
  String? backDefault;
  String? backGray;
  String? frontDefault;
  String? frontGray;

  RedBlue({this.backDefault, this.backGray, this.frontDefault, this.frontGray});

  RedBlue.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backGray = json['back_gray'];
    frontDefault = json['front_default'];
    frontGray = json['front_gray'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['back_default'] = backDefault;
    data['back_gray'] = backGray;
    data['front_default'] = frontDefault;
    data['front_gray'] = frontGray;
    return data;
  }
}

class GenerationIi {
  Crystal? crystal;
  Crystal? gold;
  Crystal? silver;

  GenerationIi({this.crystal, this.gold, this.silver});

  GenerationIi.fromJson(Map<String, dynamic> json) {
    crystal =
        json['crystal'] != null ? Crystal.fromJson(json['crystal']) : null;
    gold = json['gold'] != null ? Crystal.fromJson(json['gold']) : null;
    silver = json['silver'] != null ? Crystal.fromJson(json['silver']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (crystal != null) {
      data['crystal'] = crystal!.toJson();
    }
    if (gold != null) {
      data['gold'] = gold!.toJson();
    }
    if (silver != null) {
      data['silver'] = silver!.toJson();
    }
    return data;
  }
}

class Crystal {
  String? backDefault;
  String? backShiny;
  String? frontDefault;
  String? frontShiny;

  Crystal(
      {this.backDefault, this.backShiny, this.frontDefault, this.frontShiny});

  Crystal.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backShiny = json['back_shiny'];
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['back_default'] = backDefault;
    data['back_shiny'] = backShiny;
    data['front_default'] = frontDefault;
    data['front_shiny'] = frontShiny;
    return data;
  }
}

class GenerationIii {
  Emerald? emerald;
  Crystal? fireredLeafgreen;
  Crystal? rubySapphire;

  GenerationIii({this.emerald, this.fireredLeafgreen, this.rubySapphire});

  GenerationIii.fromJson(Map<String, dynamic> json) {
    emerald =
        json['emerald'] != null ? Emerald.fromJson(json['emerald']) : null;
    fireredLeafgreen = json['firered-leafgreen'] != null
        ? Crystal.fromJson(json['firered-leafgreen'])
        : null;
    rubySapphire = json['ruby-sapphire'] != null
        ? Crystal.fromJson(json['ruby-sapphire'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (emerald != null) {
      data['emerald'] = emerald!.toJson();
    }
    if (fireredLeafgreen != null) {
      data['firered-leafgreen'] = fireredLeafgreen!.toJson();
    }
    if (rubySapphire != null) {
      data['ruby-sapphire'] = rubySapphire!.toJson();
    }
    return data;
  }
}

class Emerald {
  String? frontDefault;
  String? frontShiny;

  Emerald({this.frontDefault, this.frontShiny});

  Emerald.fromJson(Map<String, dynamic> json) {
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['front_default'] = frontDefault;
    data['front_shiny'] = frontShiny;
    return data;
  }
}

class GenerationIv {
  DiamondPearl? diamondPearl;
  DiamondPearl? heartgoldSoulsilver;
  DiamondPearl? platinum;

  GenerationIv({this.diamondPearl, this.heartgoldSoulsilver, this.platinum});

  GenerationIv.fromJson(Map<String, dynamic> json) {
    diamondPearl = json['diamond-pearl'] != null
        ? DiamondPearl.fromJson(json['diamond-pearl'])
        : null;
    heartgoldSoulsilver = json['heartgold-soulsilver'] != null
        ? DiamondPearl.fromJson(json['heartgold-soulsilver'])
        : null;
    platinum = json['platinum'] != null
        ? DiamondPearl.fromJson(json['platinum'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (diamondPearl != null) {
      data['diamond-pearl'] = diamondPearl!.toJson();
    }
    if (heartgoldSoulsilver != null) {
      data['heartgold-soulsilver'] = heartgoldSoulsilver!.toJson();
    }
    if (platinum != null) {
      data['platinum'] = platinum!.toJson();
    }
    return data;
  }
}

class DiamondPearl {
  String? backDefault;
  String? backFemale;
  String? backShiny;
  String? backShinyFemale;
  String? frontDefault;
  String? frontFemale;
  String? frontShiny;
  String? frontShinyFemale;

  DiamondPearl(
      {this.backDefault,
      this.backFemale,
      this.backShiny,
      this.backShinyFemale,
      this.frontDefault,
      this.frontFemale,
      this.frontShiny,
      this.frontShinyFemale});

  DiamondPearl.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backFemale = json['back_female'];
    backShiny = json['back_shiny'];
    backShinyFemale = json['back_shiny_female'];
    frontDefault = json['front_default'];
    frontFemale = json['front_female'];
    frontShiny = json['front_shiny'];
    frontShinyFemale = json['front_shiny_female'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['back_default'] = backDefault;
    data['back_female'] = backFemale;
    data['back_shiny'] = backShiny;
    data['back_shiny_female'] = backShinyFemale;
    data['front_default'] = frontDefault;
    data['front_female'] = frontFemale;
    data['front_shiny'] = frontShiny;
    data['front_shiny_female'] = frontShinyFemale;
    return data;
  }
}

class GenerationV {
  BlackWhite? blackWhite;

  GenerationV({this.blackWhite});

  GenerationV.fromJson(Map<String, dynamic> json) {
    blackWhite = json['black-white'] != null
        ? BlackWhite.fromJson(json['black-white'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (blackWhite != null) {
      data['black-white'] = blackWhite!.toJson();
    }
    return data;
  }
}

class BlackWhite {
  DiamondPearl? animated;
  String? backDefault;
  String? backFemale;
  String? backShiny;
  String? backShinyFemale;
  String? frontDefault;
  String? frontFemale;
  String? frontShiny;
  String? frontShinyFemale;

  BlackWhite(
      {this.animated,
      this.backDefault,
      this.backFemale,
      this.backShiny,
      this.backShinyFemale,
      this.frontDefault,
      this.frontFemale,
      this.frontShiny,
      this.frontShinyFemale});

  BlackWhite.fromJson(Map<String, dynamic> json) {
    animated = json['animated'] != null
        ? DiamondPearl.fromJson(json['animated'])
        : null;
    backDefault = json['back_default'];
    backFemale = json['back_female'];
    backShiny = json['back_shiny'];
    backShinyFemale = json['back_shiny_female'];
    frontDefault = json['front_default'];
    frontFemale = json['front_female'];
    frontShiny = json['front_shiny'];
    frontShinyFemale = json['front_shiny_female'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (animated != null) {
      data['animated'] = animated!.toJson();
    }
    data['back_default'] = backDefault;
    data['back_female'] = backFemale;
    data['back_shiny'] = backShiny;
    data['back_shiny_female'] = backShinyFemale;
    data['front_default'] = frontDefault;
    data['front_female'] = frontFemale;
    data['front_shiny'] = frontShiny;
    data['front_shiny_female'] = frontShinyFemale;
    return data;
  }
}

class GenerationVi {
  Home? omegarubyAlphasapphire;
  Home? xY;

  GenerationVi({this.omegarubyAlphasapphire, this.xY});

  GenerationVi.fromJson(Map<String, dynamic> json) {
    omegarubyAlphasapphire = json['omegaruby-alphasapphire'] != null
        ? Home.fromJson(json['omegaruby-alphasapphire'])
        : null;
    xY = json['x-y'] != null ? Home.fromJson(json['x-y']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (omegarubyAlphasapphire != null) {
      data['omegaruby-alphasapphire'] = omegarubyAlphasapphire!.toJson();
    }
    if (xY != null) {
      data['x-y'] = xY!.toJson();
    }
    return data;
  }
}

class GenerationVii {
  DreamWorld? icons;
  Home? ultraSunUltraMoon;

  GenerationVii({this.icons, this.ultraSunUltraMoon});

  GenerationVii.fromJson(Map<String, dynamic> json) {
    icons = json['icons'] != null ? DreamWorld.fromJson(json['icons']) : null;
    ultraSunUltraMoon = json['ultra-sun-ultra-moon'] != null
        ? Home.fromJson(json['ultra-sun-ultra-moon'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (icons != null) {
      data['icons'] = icons!.toJson();
    }
    if (ultraSunUltraMoon != null) {
      data['ultra-sun-ultra-moon'] = ultraSunUltraMoon!.toJson();
    }
    return data;
  }
}

class GenerationViii {
  DreamWorld? icons;

  GenerationViii({this.icons});

  GenerationViii.fromJson(Map<String, dynamic> json) {
    icons = json['icons'] != null ? DreamWorld.fromJson(json['icons']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (icons != null) {
      data['icons'] = icons!.toJson();
    }
    return data;
  }
}
