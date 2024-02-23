import 'package:hgp/core/constant/imageasset.dart';
import 'package:hgp/data/model/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      //"onboardingtitle1".tr
      title: "HGP System",
      body:
          "est la solution idéale pour faire évoluer la décoration. Même les objets lourds ou les charges régulièrement sollicitées comme les tringles à rideaux ou les porte-manteaux ou les écrans tv peuvent être accrochés sans renfort",
      image: AppImageAsset.onBoardingImageOne),
  OnBoardingModel(
      title: "Solutions pour Cloisons intérieures",
      body:
          "SPA HASNAOUI GYPSUM PANEL est une filiale du GROUPE DES SOCIÉTÉS HASNAOUI spécialisée dans la production de panneaux de plâtre fibro renforcés. Ces panneaux massifs avec fibres de verre sont destinés à la réalisation d’ouvrages intérieurs verticaux, de cloisons, de doublages.",
      image: AppImageAsset.onBoardingImageTwo),
  OnBoardingModel(
      title: "Formation continue",
      body:
          "Nous invitons les concepteurs et les applicateurs à participer à nos formations itinérantes et à nos cours de formation chez nos distributeurs agrées, ses formations sont souvent assurées sur les grands chantiers.",
      image: AppImageAsset.onBoardingImageThree),
  OnBoardingModel(
      title: "Demander conseil",
      body:
          "Le bureau technique de HGP est toujours disponible pour les concepteurs el les opérateurs afin de fournir une assistance sur les chantiers de construction et de conseiller les solutions les plus appropriées sur les problèmes spécifiques de chaque projet.",
      image: AppImageAsset.onBoardingImageFour),
];
