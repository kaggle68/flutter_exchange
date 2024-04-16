import 'package:flutter_exchange/data/dto_mapper/exchange_dto.dart';
import 'package:flutter_exchange/data/model/conversion_rates.dart';
import 'package:flutter_exchange/data/model/exchange_model.dart';

extension ExchangeDtoToExchange on ExchangeDto {
  ExchangeModel toExchange() {
    return ExchangeModel(
      timeLastUpdateUtc: timeLastUpdateUtc,
      baseCode: baseCode,
      conversionRates: conversionRates.toConversionRates(),
    );
  }
}

extension ConversionRatesDtoToConversionRates on ConversionRatesDto {
  ConversionRates toConversionRates() {
    return ConversionRates(
      usd: usd ?? -1.0,
      aed: aed ?? -1.0,
      afn: afn ?? -1.0,
      all: all ?? -1.0,
      amd: amd ?? -1.0,
      ang: ang ?? -1.0,
      aoa: aoa ?? -1.0,
      ars: ars ?? -1.0,
      aud: aud ?? -1.0,
      awg: awg ?? -1.0,
      azn: azn ?? -1.0,
      bam: bam ?? -1.0,
      bbd: bbd ?? -1.0,
      bdt: bdt ?? -1.0,
      btn: btn ?? -1.0,
      bwp: bwp ?? -1.0,
      byn: byn ?? -1.0,
      bzd: bzd ?? -1.0,
      cad: cad ?? -1.0,
      cdf: cdf ?? -1.0,
      chf: chf ?? -1.0,
      clp: clp ?? -1.0,
      cny: cny ?? -1.0,
      cop: cop ?? -1.0,
      crc: crc ?? -1.0,
      cup: cup ?? -1.0,
      cve: cve ?? -1.0,
      czk: czk ?? -1.0,
      djf: djf ?? -1.0,
      dkk: dkk ?? -1.0,
      dop: dop ?? -1.0,
      dzd: dzd ?? -1.0,
      egp: egp ?? -1.0,
      ern: ern ?? -1.0,
      etb: etb ?? -1.0,
      eur: eur ?? -1.0,
      fjd: fjd ?? -1.0,
      fkp: fkp ?? -1.0,
      fok: fok ?? -1.0,
      gbp: gbp ?? -1.0,
      gel: gel ?? -1.0,
      ggp: ggp ?? -1.0,
      ghs: ghs ?? -1.0,
      gip: gip ?? -1.0,
      gmd: gmd ?? -1.0,
      gnf: gnf ?? -1.0,
      gtq: gtq ?? -1.0,
      gyd: gyd ?? -1.0,
      hkd: hkd ?? -1.0,
      hnl: hnl ?? -1.0,
      hrk: hrk ?? -1.0,
      htg: htg ?? -1.0,
      huf: huf ?? -1.0,
      idr: idr ?? -1.0,
      ils: ils ?? -1.0,
      imp: imp ?? -1.0,
      inr: inr ?? -1.0,
      iqd: iqd ?? -1.0,
      irr: irr ?? -1.0,
      isk: isk ?? -1.0,
      jep: jep ?? -1.0,
      jmd: jmd ?? -1.0,
      jod: jod ?? -1.0,
      jpy: jpy ?? -1.0,
      kes: kes ?? -1.0,
      kgs: kgs ?? -1.0,
      khr: khr ?? -1.0,
      kid: kid ?? -1.0,
      kmf: kmf ?? -1.0,
      krw: krw ?? -1.0,
      kwd: kwd ?? -1.0,
      kyd: kyd ?? -1.0,
      kzt: kzt ?? -1.0,
      lak: lak ?? -1.0,
      lbp: lbp ?? -1.0,
      lkr: lkr ?? -1.0,
      lrd: lrd ?? -1.0,
      lsl: lsl ?? -1.0,
      lyd: lyd ?? -1.0,
      mad: mad ?? -1.0,
      mdl: mdl ?? -1.0,
      mga: mga ?? -1.0,
      mkd: mkd ?? -1.0,
      mmk: mmk ?? -1.0,
      mnt: mnt ?? -1.0,
      mop: mop ?? -1.0,
      mru: mru ?? -1.0,
      mur: mur ?? -1.0,
      mvr: mvr ?? -1.0,
      mwk: mwk ?? -1.0,
      mxn: mxn ?? -1.0,
      myr: myr ?? -1.0,
      mzn: mzn ?? -1.0,
      nad: nad ?? -1.0,
      ngn: ngn ?? -1.0,
      nio: nio ?? -1.0,
      nok: nok ?? -1.0,
      npr: npr ?? -1.0,
      nzd: nzd ?? -1.0,
      omr: omr ?? -1.0,
      pab: pab ?? -1.0,
      pen: pen ?? -1.0,
      pgk: pgk ?? -1.0,
      php: php ?? -1.0,
      pkr: pkr ?? -1.0,
      pln: pln ?? -1.0,
      pyg: pyg ?? -1.0,
      qar: qar ?? -1.0,
      ron: ron ?? -1.0,
      rsd: rsd ?? -1.0,
      rub: rub ?? -1.0,
      rwf: rwf ?? -1.0,
      sar: sar ?? -1.0,
      sbd: sbd ?? -1.0,
      scr: scr ?? -1.0,
      sdg: sdg ?? -1.0,
      sek: sek ?? -1.0,
      sgd: sgd ?? -1.0,
      shp: shp ?? -1.0,
      sle: sle ?? -1.0,
      sll: sll ?? -1.0,
      sos: sos ?? -1.0,
      srd: srd ?? -1.0,
      ssp: ssp ?? -1.0,
      stn: stn ?? -1.0,
      syp: syp ?? -1.0,
      szl: szl ?? -1.0,
      thb: thb ?? -1.0,
      tjs: tjs ?? -1.0,
      tmt: tmt ?? -1.0,
      tnd: tnd ?? -1.0,
      top: top ?? -1.0,
      TRY: TRY ?? -1.0,
      ttd: ttd ?? -1.0,
      tvd: tvd ?? -1.0,
      twd: twd ?? -1.0,
      tzs: tzs ?? -1.0,
      uah: uah ?? -1.0,
      ugx: ugx ?? -1.0,
      uyu: uyu ?? -1.0,
      uzs: uzs ?? -1.0,
      ves: ves ?? -1.0,
      vnd: vnd ?? -1.0,
      vuv: vuv ?? -1.0,
      wst: wst ?? -1.0,
      xaf: xaf ?? -1.0,
      xcd: xcd ?? -1.0,
      xdr: xdr ?? -1.0,
      xof: xof ?? -1.0,
      xpf: xpf ?? -1.0,
      yer: yer ?? -1.0,
      zar: zar ?? -1.0,
      zmw: zmw ?? -1.0,
      zwl: zwl ?? -1.0,
    );
  }
}
