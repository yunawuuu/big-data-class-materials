version 17
clear all
set more off
capture log close
log using adult.log, replace
 
/* ----------------------------------------------------------------------------
 
   The National Health Interview Survey (NHIS) 2019;
 
                 Sample Adult data file
 
   This program loads the NHIS sample adult ASCII data file downloaded from the
   NCHS website (https://www.cdc.gov/nchs/nhis/index.htm) to a Stata dataset.
 
   The program creates descriptive variable labels and formats with meaningful
   category labels.  It sets the variable lengths and uses input statements to
   read in the data.
 
   BEFORE RUNNING THIS PROGRAM, PLEASE:
    - Create a folder called C:\NHIS2019 (on a machine running Windows)
    - Download the sample adult ASCII file to the folder C:\NHIS2019
      (on a machine running Windows)
 
   Running this program will replace the log file and the dataset in the default
   directory, if present.
*/
 
// cd c:\nhis2019
 
// version 6.0
 
* The following command temporarily changes the command-
* ending delimiter from a carriage return to a semicolon
 
#delimit;
clear;
set mem 200m;
 
* INPUT ALL VARIABLES;
 
infix 
      /* IDN  LOCATIONS */
      rectype                1 -    2      srvy_yr                3 -    6 
  str hhx                    7 -   13      wtia_a                14 -   21 
      wtfa_a                22 -   29 
 
      /* UCF  LOCATIONS */
      urbrrl                30 -   30      region                31 -   31 
      pstrat                32 -   34      ppsu                  35 -   37 
 
      /* GEN  LOCATIONS */
      intv_qrt              38 -   38      hhstat_a              39 -   39 
      astatnew              40 -   40      avail_a               41 -   41 
      proxy_a               42 -   42      proxyrel_a            43 -   43 
 
 
      /* FLG  LOCATIONS */
      hhrespsa_flg          44 -   44 
 
      /* HHC  LOCATIONS */
      agep_a                45 -   46      age65                 47 -   47 
      sex_a                 48 -   48      educ_a                49 -   50 
      afnow                 51 -   51      hisp_a                52 -   52 
      hispallp_a            53 -   54      hisdetp_a             55 -   55 
      raceallp_a            56 -   56      pcnttc                57 -   57 
      pcnt18uptc            58 -   58      pcntlt18tc            59 -   59 
 
 
      /* FAM  LOCATIONS */
      pcntfam_a             60 -   60      pcntadlt_a            61 -   61 
      pcntkids_a            62 -   62      over65flg_a           63 -   63 
      mltfamflg_a           64 -   64      maxeduc_a             65 -   66 
 
 
      /* HIS  LOCATIONS */
      phstat_a              67 -   67 
 
      /* HYP  LOCATIONS */
      hypev_a               68 -   68      hypdif_a              69 -   69 
      hyp12m_a              70 -   70      hypmed_a              71 -   71 
 
 
      /* CHL  LOCATIONS */
      chlev_a               72 -   72      chl12m_a              73 -   73 
      chlmed_a              74 -   74 
 
      /* CVC  LOCATIONS */
      chdev_a               75 -   75      angev_a               76 -   76 
      miev_a                77 -   77      strev_a               78 -   78 
 
 
      /* ASP  LOCATIONS */
      aspmedev_a            79 -   79      aspmednown_a          80 -   80 
      aspmedstp_a           81 -   81      asponown_a            82 -   82 
 
 
      /* AST  LOCATIONS */
      asev_a                83 -   83      astill_a              84 -   84 
      asat12m_a             85 -   85      aser12m_a             86 -   86 
 
 
      /* CAN  LOCATIONS */
      canev_a               87 -   87      bladdcan_a            88 -   88 
      bladdagetc_a          89 -   90      bloodcan_a            91 -   91 
      bloodagetc_a          92 -   93      bonecan_a             94 -   94 
      boneagetc_a           95 -   96      braincan_a            97 -   97 
      brainagetc_a          98 -   99      breascan_a           100 -  100 
      breasagetc_a         101 -  102      cervican_a           103 -  103 
      cerviagetc_a         104 -  105      coloncan_a           106 -  106 
      colonagetc_a         107 -  108      esophcan_a           109 -  109 
      esophagetc_a         110 -  111      gallbcan_a           112 -  112 
      gallbagetc_a         113 -  114      laryncan_a           115 -  115 
      larynagetc_a         116 -  117      leukecan_a           118 -  118 
      leukeagetc_a         119 -  120      livercan_a           121 -  121 
      liveragetc_a         122 -  123      lungcan_a            124 -  124 
      lungagetc_a          125 -  126      lymphcan_a           127 -  127 
      lymphagetc_a         128 -  129      melancan_a           130 -  130 
      melanagetc_a         131 -  132      mouthcan_a           133 -  133 
      mouthagetc_a         134 -  135      ovarycan_a           136 -  136 
      ovaryagetc_a         137 -  138      pancrcan_a           139 -  139 
      pancragetc_a         140 -  141      prostcan_a           142 -  142 
      prostagetc_a         143 -  144      rectucan_a           145 -  145 
      rectuagetc_a         146 -  147      sknmcan_a            148 -  148 
      sknmagetc_a          149 -  150      sknnmcan_a           151 -  151 
      sknnmagetc_a         152 -  153      skndkcan_a           154 -  154 
      skndkagetc_a         155 -  156      stomacan_a           157 -  157 
      stomaagetc_a         158 -  159      throacan_a           160 -  160 
      throaagetc_a         161 -  162      thyrocan_a           163 -  163 
      thyroagetc_a         164 -  165      uterucan_a           166 -  166 
      uteruagetc_a         167 -  168      hdnckcan_a           169 -  169 
      hdnckagetc_a         170 -  171      colrccan_a           172 -  172 
      colrcagetc_a         173 -  174      othercanp_a          175 -  175 
      otheragetc_a         176 -  177      numcan_a             178 -  178 
 
 
      /* DIB  LOCATIONS */
      predib_a             179 -  179      gesdib_a             180 -  180 
      dibev_a              181 -  181      dibagetc_a           182 -  183 
      difyrstc_a           184 -  185      dibpill_a            186 -  186 
      dibins_a             187 -  187      dibinstime_a         188 -  188 
      dibinsstop_a         189 -  189      dibinsstyr_a         190 -  190 
      dibtype_a            191 -  191 
 
      /* CON  LOCATIONS */
      copdev_a             192 -  192      arthev_a             193 -  193 
      demenev_a            194 -  194      anxev_a              195 -  195 
      depev_a              196 -  196 
 
      /* BMI  LOCATIONS */
      pregnow_a            197 -  197      heighttc_a           198 -  199 
      weightlbtc_a         200 -  202      bmicat_a             203 -  203 
 
 
      /* VIS  LOCATIONS */
      wearglss_a           204 -  204      visiondf_a           205 -  205 
 
 
      /* HEA  LOCATIONS */
      hearaid_a            206 -  206      hearaidfr_a          207 -  207 
      hearingdf_a          208 -  208 
 
      /* MOB  LOCATIONS */
      diff_a               209 -  209      equip_a              210 -  210 
      wlk100_a             211 -  211      wlk13m_a             212 -  212 
      steps_a              213 -  213      canewlkr_a           214 -  214 
      wchair_a             215 -  215      perasst_a            216 -  216 
      noeqwlk100_a         217 -  217      noeqwlk13m_a         218 -  218 
      noeqsteps_a          219 -  219      eqwlk100_a           220 -  220 
      eqwlk13m_a           221 -  221      eqsteps_a            222 -  222 
 
 
      /* COM  LOCATIONS */
      comdiff_a            223 -  223 
 
      /* COG  LOCATIONS */
      cogmemdff_a          224 -  224      cogtypedff_a         225 -  225 
      cogfrqdff_a          226 -  226      cogamtdff_a          227 -  227 
 
 
      /* UPP  LOCATIONS */
      uppslfcr_a           228 -  228      uppraise_a           229 -  229 
      uppobjct_a           230 -  230      disab3_a             231 -  231 
 
 
      /* SOC  LOCATIONS */
      socerrnds_a          232 -  232      socsclpar_a          233 -  233 
      socwrklim_a          234 -  234 
 
      /* INS  LOCATIONS */
      notcov_a             235 -  235      cover_a              236 -  236 
      cover65_a            237 -  237      sincovde_a           238 -  238 
      sincovvs_a           239 -  239      sincovrx_a           240 -  240 
      medicare_a           241 -  241      mcpart_a             242 -  242 
      mcchoice_a           243 -  243      mchmo_a              244 -  244 
      mcadvr_a             245 -  245      mcpartd_a            246 -  246 
      medicaid_a           247 -  247      maxchng_a            248 -  248 
      maprem_a             249 -  249      madeduc_a            250 -  250 
      mahdhp_a             251 -  251      maflg_a              252 -  252 
      private_a            253 -  253      exchange_a           254 -  254 
      polhld1_a            255 -  255      prplcov1_a           256 -  256 
      prpolh1_a            257 -  257      prplcov1_c_a         258 -  258 
      plnwrkr1_a           259 -  260      plnexchg1_a          261 -  261 
      pln1pay1_a           262 -  262      pln1pay2_a           263 -  263 
      pln1pay3_a           264 -  264      pln1pay4_a           265 -  265 
      pln1pay5_a           266 -  266      pln1pay6_a           267 -  267 
      hicostr1_a           268 -  272      prdeduc1_a           273 -  273 
      prhdhp1_a            274 -  274      hsahra1_a            275 -  275 
      prrxcov1_a           276 -  276      prdncov1_a           277 -  277 
      prvscov1_a           278 -  278      exchpr1_a            279 -  279 
      prflg_a              280 -  280      pxchng1_a            281 -  281 
      prprem1_a            282 -  282      plexchpr1_a          283 -  283 
      polhld2_a            284 -  284      prplcov2_a           285 -  285 
      prpolh2_a            286 -  286      prplcov2_c_a         287 -  287 
      plnwrkr2_a           288 -  289      plnexchg2_a          290 -  290 
      pln2pay1_a           291 -  291      pln2pay2_a           292 -  292 
      pln2pay3_a           293 -  293      pln2pay4_a           294 -  294 
      pln2pay5_a           295 -  295      pln2pay6_a           296 -  296 
      hicostr2_a           297 -  301      prdeduc2_a           302 -  302 
      prhdhp2_a            303 -  303      hsahra2_a            304 -  304 
      prrxcov2_a           305 -  305      prdncov2_a           306 -  306 
      prvscov2_a           307 -  307      exchpr2_a            308 -  308 
      chip_a               309 -  309      chxchng_a            310 -  310 
      chprem_a             311 -  311      chdeduc_a            312 -  312 
      chhdhp_a             313 -  313      chflg_a              314 -  314 
      othpub_a             315 -  315      opxchng_a            316 -  316 
      opprem_a             317 -  317      opdeduc_a            318 -  318 
      ophdhp_a             319 -  319      plexchop_a           320 -  320 
      opflg_a              321 -  321      othgov_a             322 -  322 
      ogxchng_a            323 -  323      ogprem_a             324 -  324 
      ogdeduc_a            325 -  325      oghdhp_a             326 -  326 
      plexchog_a           327 -  327      ogflg_a              328 -  328 
      military_a           329 -  329      milspc1r_a           330 -  330 
      milspc2_a            331 -  331      milspc3_a            332 -  332 
      ihs_a                333 -  333      hilast_a             334 -  334 
      hilastmy_a           335 -  336      histopjob_a          337 -  337 
      histopmiss_a         338 -  338      histopage_a          339 -  339 
      histopcost_a         340 -  340      histopelig_a         341 -  341 
      rsnhicost_a          342 -  342      rsnhiwant_a          343 -  343 
      rsnhielig_a          344 -  344      rsnhiconf_a          345 -  345 
      rsnhimeet_a          346 -  346      rsnhiwait_a          347 -  347 
      rsnhioth_a           348 -  348      rsnhijob_a           349 -  349 
      rsnhimiss_a          350 -  350      hinotyr_a            351 -  351 
      hinotmyr_a           352 -  353      milspc1_a            354 -  354 
      hicov_a              355 -  355      hikind01_a           356 -  356 
      hikind02_a           357 -  357      hikind03_a           358 -  358 
      hikind04_a           359 -  359      hikind05_a           360 -  360 
      hikind06_a           361 -  361      hikind07_a           362 -  362 
      hikind08_a           363 -  363      hikind09_a           364 -  364 
      hikind10_a           365 -  365      mcareprb_a           366 -  366 
      mcaidprb_a           367 -  367 
 
      /* PAY  LOCATIONS */
      paybll12m_a          368 -  368      paynobllnw_a         369 -  369 
      payworry_a           370 -  370 
 
      /* DNC  LOCATIONS */
      denprev_a            371 -  371      dendl12m_a           372 -  372 
      denng12m_a           373 -  373 
 
      /* UTZ  LOCATIONS */
      lastdr_a             374 -  374      wellness_a           375 -  375 
      wellvis_a            376 -  376      usualpl_a            377 -  377 
      usplkind_a           378 -  378      urgnt12mtc_a         379 -  379 
      emerg12mtc_a         380 -  380      hospongt_a           381 -  381 
      meddl12m_a           382 -  382      medng12m_a           383 -  383 
 
 
      /* PMD  LOCATIONS */
      rx12m_a              384 -  384      rxsk12m_a            385 -  385 
      rxls12m_a            386 -  386      rxdl12m_a            387 -  387 
      rxdg12m_a            388 -  388 
 
      /* OPD  LOCATIONS */
      opd12m_a             389 -  389      opd3m_a              390 -  390 
      opdacute_a           391 -  391      opdchronic_a         392 -  392 
      opdfreq_a            393 -  393 
 
      /* PRV  LOCATIONS */
      bplast_a             394 -  394      chollast_a           395 -  395 
      diablast_a           396 -  396      colorectev_a         397 -  397 
      colorectyp_a         398 -  398      colwhen_a            399 -  399 
      colreason_a          400 -  400      colpay_a             401 -  401 
      colsigwhen_a         402 -  402      sigwhen_a            403 -  403 
      coloroth_a           404 -  404      ctcolev_a            405 -  405 
      ctcolwhen_a          406 -  406      fithev_a             407 -  407 
      fithwhen_a           408 -  408      cologuard_a          409 -  409 
      fitcolg_a            410 -  410      colproblem_a         411 -  411 
      colkind1_a           412 -  412      colkind2_a           413 -  413 
      colkind3_a           414 -  414      colkind4_a           415 -  415 
      colkind5_a           416 -  416      colkind6_a           417 -  417 
      psatest_a            418 -  418      psawhen_a            419 -  419 
      psareason_a          420 -  420      psasuggest_a         421 -  421 
      psa5yrtc_a           422 -  423      psaadvant_a          424 -  424 
      psadisadv_a          425 -  425      cervicev_a           426 -  426 
      cervicwhen_a         427 -  427      cerreason_a          428 -  428 
      paptest_a            429 -  429      hpvtest_a            430 -  430 
      cervicres_a          431 -  431      cervicnot_a          432 -  433 
      hystev_a             434 -  434      mamev_a              435 -  435 
      mamwhen_a            436 -  436      mamreason_a          437 -  437 
      mamage1st_a          438 -  438      mamwhy1st_a          439 -  439 
      breastexam_a         440 -  440      bexamwhen_a          441 -  441 
      bexamreas_a          442 -  442 
 
      /* IMS  LOCATIONS */
      pregfluyr_a          443 -  443      livebirth_a          444 -  444 
      shtflu12m_a          445 -  445      shtflum_a            446 -  447 
      shtfluy_a            448 -  451      flupreg_a            452 -  452 
      flupreg2_a           453 -  453      shtpnuev_a           454 -  454 
      shtpneunb_a          455 -  455      shtshingle_a         456 -  456 
      zostavax_a           457 -  457      zostavxyrp_a         458 -  461 
      zostawhen_a          462 -  462      shingrix_a           463 -  463 
      shingrixnb_a         464 -  464      shingrxyrp_a         465 -  468 
      shingwhen_a          469 -  469      tdappreg_a           470 -  470 
      shttetanus_a         471 -  471      shttdap_a            472 -  472 
      shthpv_a             473 -  473      shthpvagep_a         474 -  475 
      workhealth_a         476 -  476      wrkhlthfc_a          477 -  477 
 
 
      /* PTC  LOCATIONS */
      eyeex12m_a           478 -  478      thera12m_a           479 -  479 
      homehc12m_a          480 -  480 
 
      /* ANX  LOCATIONS */
      anxfreq_a            481 -  481      anxmed_a             482 -  482 
      anxlevel_a           483 -  483 
 
      /* DEP  LOCATIONS */
      depfreq_a            484 -  484      depmed_a             485 -  485 
      deplevel_a           486 -  486 
 
      /* MHC  LOCATIONS */
      mhrx_a               487 -  487      mhthrpy_a            488 -  488 
      mhtpynow_a           489 -  489      mhthdly_a            490 -  490 
      mhthnd_a             491 -  491 
 
      /* PHQ  LOCATIONS */
      phq81_a              492 -  492      phq82_a              493 -  493 
      phq83_a              494 -  494      phq84_a              495 -  495 
      phq85_a              496 -  496      phq86_a              497 -  497 
      phq87_a              498 -  498      phq88_a              499 -  499 
      phqcat_a             500 -  500 
 
      /* GAD  LOCATIONS */
      gad71_a              501 -  501      gad72_a              502 -  502 
      gad73_a              503 -  503      gad74_a              504 -  504 
      gad75_a              505 -  505      gad76_a              506 -  506 
      gad77_a              507 -  507      gadcat_a             508 -  508 
 
 
      /* PAI  LOCATIONS */
      paifrq3m_a           509 -  509      paiamnt_a            510 -  510 
      paiwklm3m_a          511 -  511      paiaffm3m_a          512 -  512 
      paiphystpy_a         513 -  513      paichiro_a           514 -  514 
      paitalktpy_a         515 -  515      paiprogram_a         516 -  516 
      paigroup_a           517 -  517      paiyoga_a            518 -  518 
      paimassage_a         519 -  519      paimeditat_a         520 -  520 
      paimother_a          521 -  521      painmeff_a           522 -  522 
      paiback3m_a          523 -  523      paiulmb3m_a          524 -  524 
      paillmb3m_a          525 -  525      paihdfc3m_a          526 -  526 
      paiapg3m_a           527 -  527      paitooth3m_a         528 -  528 
 
 
      /* ART  LOCATIONS */
      jntsymp_a            529 -  529      jntpn_a              530 -  531 
      arthlmt_a            532 -  532      arthwrk_a            533 -  533 
      arthwt_a             534 -  534      arthph_a             535 -  535 
 
 
      /* CIG  LOCATIONS */
      smkev_a              536 -  536      smknow_a             537 -  537 
      smkcigst_a           538 -  538      cignow_a             539 -  540 
      smk30d_a             541 -  542      cig30d_a             543 -  544 
      ecigev_a             545 -  545      ecignow_a            546 -  546 
      smkecigst_a          547 -  547 
 
      /* OTB  LOCATIONS */
      cigarev_a            548 -  548      cigarcur_a           549 -  549 
      cigar30d_a           550 -  551      pipeev_a             552 -  552 
      pipecur_a            553 -  553      smokelsev_a          554 -  554 
      smokelscur_a         555 -  555 
 
      /* ORN  LOCATIONS */
      orient_a             556 -  556 
 
      /* MAR  LOCATIONS */
      marital_a            557 -  557      spousliv_a           558 -  558 
      spousep_a            559 -  559      evrmarried_a         560 -  560 
      spousesex_a          561 -  561      saspphisp_a          562 -  562 
      saspprace_a          563 -  563      spousagetc_a         564 -  565 
      spouseduc_a          566 -  567      spouswrk_a           568 -  568 
      spouswkft_a          569 -  569      prtnrsex_a           570 -  570 
      prtnragetc_a         571 -  572      prtnreduc_a          573 -  574 
      prtnrwrk_a           575 -  575      prtnrwkft_a          576 -  576 
      marstat_a            577 -  577      legmstat_a           578 -  578 
      parstat_a            579 -  579      saparentsc_a         580 -  580 
 
 
      /* VET  LOCATIONS */
      afvet_a              581 -  581      afvettrn_a           582 -  582 
      combat_a             583 -  583      vadisb_a             584 -  584 
      vahosp_a             585 -  585      vacareev_a           586 -  586 
 
 
      /* NAT  LOCATIONS */
      natusborn_a          587 -  587      yrsinus_a            588 -  588 
      citznstp_a           589 -  589 
 
      /* SCH  LOCATIONS */
      schcurenr_a          590 -  590      schdymsstc_a         591 -  592 
 
 
      /* EMP  LOCATIONS */
      empwrklswk_a         593 -  593      empwkhrs2_a          594 -  595 
      empwrkft_a           596 -  596      emprsnowk_a          597 -  598 
      emplstwork_a         599 -  599      emppdsklv_a          600 -  600 
      empoffhi_a           601 -  601      empdysmss2_a         602 -  604 
 
 
      /* FEM  LOCATIONS */
      pcntadtwkp_a         605 -  605      pcntadtwfp_a         606 -  606 
 
 
      /* INC  LOCATIONS */
      incwrko_a            607 -  607      incinter_a           608 -  608 
      incssrr_a            609 -  609      incssissdi_a         610 -  610 
      ssissdibth_a         611 -  611      ssissdidsb_a         612 -  612 
      incwelf_a            613 -  613      incretire_a          614 -  614 
      incothr_a            615 -  615      faminctc_a           616 -  621 
      povrattc_a           622 -  626      incgrp_a             627 -  627 
      ratcat_a             628 -  629  str impincflg_a          630 -  634 
      inctcflg_a           635 -  635 
 
      /* FOO  LOCATIONS */
      fsnap12m_a           636 -  636      fsnap30d_a           637 -  637 
      fwic12m_a            638 -  638      flunch12m_a          639 -  639 
 
 
      /* FDS  LOCATIONS */
      fdsrunout_a          640 -  640      fdslast_a            641 -  641 
      fdsbalance_a         642 -  642      fdsskip_a            643 -  643 
      fdsskipdys_a         644 -  645      fdsless_a            646 -  646 
      fdshungry_a          647 -  647      fdsweight_a          648 -  648 
      fdsnoteat_a          649 -  649      fdsnedays_a          650 -  651 
      fdscat3_a            652 -  652      fdscat4_a            653 -  653 
 
 
      /* HOU  LOCATIONS */
      houyrsliv_a          654 -  654      houtenure_a          655 -  655 
      hougvasst_a          656 -  656 
 
using adult19.dat;
 
 
* DEFINE VARIABLE LABELS;
 
* IDN  VARIABLE LABELS;
label variable rectype            "Record type";
label variable srvy_yr            "Year of the National Health Interview Survey";
label variable hhx                "Randomly assigned household number unique to a household";
label variable wtia_a             "Weight - annual pre-post stratification calibration";
label variable wtfa_a             "Weight - Final Annual";
 
* UCF  VARIABLE LABELS;
label variable urbrrl             "2013 NCHS Urban-Rural Classification Scheme for Counties";
label variable region             "Household region";
label variable pstrat             "Pseudo-stratum for public-use file variance estimation";
label variable ppsu               "Pseudo-PSU for public-use file variance estimation";
 
* GEN  VARIABLE LABELS;
label variable intv_qrt           "Interview quarter";
label variable hhstat_a           "Indicates person is the Sample Adult";
label variable astatnew           "Recoded ASTAT";
label variable avail_a            "Sample Adult Available";
label variable proxy_a            "Proxy Available";
label variable proxyrel_a         "Proxy's Relationship to Sample Adult";
 
* FLG  VARIABLE LABELS;
label variable hhrespsa_flg       "Sample Adult is the household respondent or the proxy who lives in the household";
 
* HHC  VARIABLE LABELS;
label variable agep_a             "Age of SA (top coded)";
label variable age65              "Age 65 or older";
label variable sex_a              "Sex of Sample Adult";
label variable educ_a             "Educational level of sample adult";
label variable afnow              "Full-time active duty screener";
label variable hisp_a             "Recode: Hispanic ethnicity of SA";
label variable hispallp_a         "Single and multiple race groups with Hispanic origin";
label variable hisdetp_a          "Hispanic origin detail";
label variable raceallp_a         "Single and multiple race groups";
label variable pcnttc             "Top-coded count of all non-deleted household members";
label variable pcnt18uptc         "Top-coded count of persons 18 or older in the household";
label variable pcntlt18tc         "Top-coded count of persons under 18 in the household";
 
* FAM  VARIABLE LABELS;
label variable pcntfam_a          "Number of persons in Sample Adult family, top-coded 6+";
label variable pcntadlt_a         "Number of adults in Sample Adult family, top-coded 3+";
label variable pcntkids_a         "Number of children in Sample Adult family, top-coded 3+";
label variable over65flg_a        "Indicator for at least 1 person aged 65+ in SA family";
label variable mltfamflg_a        "Indicator for multifamily households";
label variable maxeduc_a          "Highest level of education of all the adults in SA's family";
 
* HIS  VARIABLE LABELS;
label variable phstat_a           "General health status";
 
* HYP  VARIABLE LABELS;
label variable hypev_a            "Ever been told you had hypertension";
label variable hypdif_a           "Told had hypertension on two or more visits";
label variable hyp12m_a           "Hypertension, past 12 months";
label variable hypmed_a           "Now taking high blood pressure medication";
 
* CHL  VARIABLE LABELS;
label variable chlev_a            "Ever told you had high cholesterol";
label variable chl12m_a           "High cholesterol, past 12 months";
label variable chlmed_a           "Now taking cholesterol medication";
 
* CVC  VARIABLE LABELS;
label variable chdev_a            "Ever been told you had coronary heart disease";
label variable angev_a            "Ever been told you had angina";
label variable miev_a             "Ever been told you had a heart attack";
label variable strev_a            "Ever been told you had a stroke";
 
* ASP  VARIABLE LABELS;
label variable aspmedev_a         "Told to take low-dose aspirin";
label variable aspmednown_a       "Now following aspirin advice";
label variable aspmedstp_a        "Advise to stop taking aspirin";
label variable asponown_a         "Taking low dose-aspirin on own";
 
* AST  VARIABLE LABELS;
label variable asev_a             "Ever had asthma";
label variable astill_a           "Still have asthma";
label variable asat12m_a          "Asthma episode";
label variable aser12m_a          "Asthma ER visit";
 
* CAN  VARIABLE LABELS;
label variable canev_a            "Ever been told you had cancer";
label variable bladdcan_a         "Bladder cancer mentioned";
label variable bladdagetc_a       "Age when first told had bladder cancer";
label variable bloodcan_a         "Blood cancer mentioned";
label variable bloodagetc_a       "Age when first told had blood cancer";
label variable bonecan_a          "Bone cancer mentioned";
label variable boneagetc_a        "Age when first told had bone cancer";
label variable braincan_a         "Brain cancer mentioned";
label variable brainagetc_a       "Age when first told had brain cancer";
label variable breascan_a         "Breast cancer mentioned";
label variable breasagetc_a       "Age when first told had breast cancer";
label variable cervican_a         "Cervical cancer mentioned";
label variable cerviagetc_a       "Age when first told had cervical cancer";
label variable coloncan_a         "Colon cancer mentioned";
label variable colonagetc_a       "Age when first told had colon cancer";
label variable esophcan_a         "Esophageal cancer mentioned";
label variable esophagetc_a       "Age when first told had esophageal cancer";
label variable gallbcan_a         "Gallbladder cancer mentioned";
label variable gallbagetc_a       "Age when first told had gallbladder cancer";
label variable laryncan_a         "Larynx-trachea cancer mentioned";
label variable larynagetc_a       "Age when first told had larynx-trachea cancer";
label variable leukecan_a         "Leukemia mentioned";
label variable leukeagetc_a       "Age when first told had leukemia";
label variable livercan_a         "Liver cancer mentioned";
label variable liveragetc_a       "Age when first told had liver cancer";
label variable lungcan_a          "Lung cancer mentioned";
label variable lungagetc_a        "Age when first told had lung cancer";
label variable lymphcan_a         "Lymphoma cancer mentioned";
label variable lymphagetc_a       "Age when first told had lymphoma";
label variable melancan_a         "Melanoma cancer mentioned";
label variable melanagetc_a       "Age when first told had melanoma cancer";
label variable mouthcan_a         "Mouth, tongue or lip cancer mentioned";
label variable mouthagetc_a       "Age when first told had mouth, tongue or lip cancer";
label variable ovarycan_a         "Ovarian cancer mentioned";
label variable ovaryagetc_a       "Age when first told had ovarian cancer";
label variable pancrcan_a         "Pancreatic cancer mentioned";
label variable pancragetc_a       "Age when first told had pancreatic cancer";
label variable prostcan_a         "Prostate cancer mentioned";
label variable prostagetc_a       "Age when first told had prostate cancer";
label variable rectucan_a         "Rectal cancer mentioned";
label variable rectuagetc_a       "Age when first told had rectal cancer";
label variable sknmcan_a          "Skin melanoma cancer mentioned";
label variable sknmagetc_a        "Age when first told had skin melanoma cancer";
label variable sknnmcan_a         "Skin non-melanoma cancer mentioned";
label variable sknnmagetc_a       "Age when first told skin non-melanoma cancer";
label variable skndkcan_a         "Skin cancer (don't know what kind) mentioned";
label variable skndkagetc_a       "Age when first told had skin cancer (don't know what kind)";
label variable stomacan_a         "Stomach cancer mentioned";
label variable stomaagetc_a       "Age when first told had stomach cancer";
label variable throacan_a         "Throat - pharynx cancer mentioned";
label variable throaagetc_a       "Age when first told had throat-pharynx cancer";
label variable thyrocan_a         "Thyroid cancer mentioned";
label variable thyroagetc_a       "Age when first told had thyroid cancer";
label variable uterucan_a         "Uterine cancer mentioned";
label variable uteruagetc_a       "Age when first told had uterine cancer";
label variable hdnckcan_a         "Head and neck cancers mentioned";
label variable hdnckagetc_a       "Age when first told had head or neck cancer";
label variable colrccan_a         "Colorectal cancer mentioned";
label variable colrcagetc_a       "Age when first told had colon or rectal cancer";
label variable othercanp_a        "Other cancer mentioned";
label variable otheragetc_a       "Age when first told had other cancer";
label variable numcan_a           "Number of reported types of cancers";
 
* DIB  VARIABLE LABELS;
label variable predib_a           "Ever had prediabetes";
label variable gesdib_a           "Gestational diabetes";
label variable dibev_a            "Ever had diabetes";
label variable dibagetc_a         "Age first diagnosed w/diabetes";
label variable difyrstc_a         "Years since first diagnosed w/diabetes";
label variable dibpill_a          "Taking diabetic pills";
label variable dibins_a           "Taking insulin";
label variable dibinstime_a       "Time from diabetes to insulin";
label variable dibinsstop_a       "Ever stop using insulin";
label variable dibinsstyr_a       "Only stop insulin in first year";
label variable dibtype_a          "Diabetes type";
 
* CON  VARIABLE LABELS;
label variable copdev_a           "Ever been told you had COPD, emphysema, or chronic bronchitis?";
label variable arthev_a           "Ever had arthritis";
label variable demenev_a          "Ever had dementia";
label variable anxev_a            "Ever had anxiety disorder";
label variable depev_a            "Ever had depression";
 
* BMI  VARIABLE LABELS;
label variable pregnow_a          "Pregnant now";
label variable heighttc_a         "Total height in inches, public use";
label variable weightlbtc_a       "Weight without shoes (pounds), public use";
label variable bmicat_a           "Categorical body mass index, public use";
 
* VIS  VARIABLE LABELS;
label variable wearglss_a         "Wear glasses/contact lenses";
label variable visiondf_a         "Difficulty seeing";
 
* HEA  VARIABLE LABELS;
label variable hearaid_a          "Use hearing aid";
label variable hearaidfr_a        "How often use hearing aid";
label variable hearingdf_a        "Difficulty hearing";
 
* MOB  VARIABLE LABELS;
label variable diff_a             "Difficulty walking/steps";
label variable equip_a            "Use equipment to get around";
label variable wlk100_a           "Difficulty walking 100 yards";
label variable wlk13m_a           "Difficulty walking 1/3 mile";
label variable steps_a            "Difficulty walking steps";
label variable canewlkr_a         "Use cane or walker";
label variable wchair_a           "Use wheelchair/scooter";
label variable perasst_a          "Use someone's assistance";
label variable noeqwlk100_a       "Difficulty walking 100 yards without aid";
label variable noeqwlk13m_a       "Difficulty walking 1/3 mile without aid";
label variable noeqsteps_a        "Difficulty walking steps without equipment";
label variable eqwlk100_a         "Difficulty walking 100 yards with aid";
label variable eqwlk13m_a         "Difficulty walking 1/3 mile with aid";
label variable eqsteps_a          "Difficulty walking steps with equipment";
 
* COM  VARIABLE LABELS;
label variable comdiff_a          "Difficulty communicating";
 
* COG  VARIABLE LABELS;
label variable cogmemdff_a        "Difficulty remembering/concentrating";
label variable cogtypedff_a       "Remembering/concentrating or both";
label variable cogfrqdff_a        "Difficulty remembering-how often";
label variable cogamtdff_a        "Difficulty remembering-how much";
 
* UPP  VARIABLE LABELS;
label variable uppslfcr_a         "Difficulty with self care";
label variable uppraise_a         "Difficulty raising soda bottle";
label variable uppobjct_a         "Difficulty using hands and fingers";
label variable disab3_a           "The Washington Group Short Set Composite Disability Indicator";
 
* SOC  VARIABLE LABELS;
label variable socerrnds_a        "Difficulty doing errands alone";
label variable socsclpar_a        "Difficulty participating in social activities";
label variable socwrklim_a        "Work limited due to health problem";
 
* INS  VARIABLE LABELS;
label variable notcov_a           "Coverage status as used in Health United States";
label variable cover_a            "Health insurance hierarchy under 65";
label variable cover65_a          "Health Insurance hierarchy 65+";
label variable sincovde_a         "Single service plan - dental";
label variable sincovvs_a         "Single service plan - vision";
label variable sincovrx_a         "Single service plan - prescription";
label variable medicare_a         "Medicare recode";
label variable mcpart_a           "Type of Medicare coverage";
label variable mcchoice_a         "Enrolled in Medicare Advantage Plan";
label variable mchmo_a            "Medicare HMO";
label variable mcadvr_a           "Medicare Advantage Plan";
label variable mcpartd_a          "Medicare Part D";
label variable medicaid_a         "Medicaid recode";
label variable maxchng_a          "Medicaid through Marketplace";
label variable maprem_a           "Medicaid premium";
label variable madeduc_a          "Medicaid deductible";
label variable mahdhp_a           "Medicaid HDHP";
label variable maflg_a            "Medicaid reassignment flag";
label variable private_a          "Private health insurance recode";
label variable exchange_a         "Plan through Health Insurance Exchange, NCHS algorithm";
label variable polhld1_a          "Policyholder for private plan 1";
label variable prplcov1_a         "Plan coverage for others - plan 1";
label variable prpolh1_a          "Relation to policyholder - plan 1";
label variable prplcov1_c_a       "Response to PRPLCOV1_C or PRPLCOV2_C  from child - plan 1";
label variable plnwrkr1_a         "How plan was originally obtained - plan 1";
label variable plnexchg1_a        "Health plan obtained through Marketplace - plan 1";
label variable pln1pay1_a         "Paid for by self or family - plan 1";
label variable pln1pay2_a         "Paid for by employer or union - plan 1";
label variable pln1pay3_a         "Paid for by someone outside the household - plan 1";
label variable pln1pay4_a         "Paid for by Medicare - plan 1";
label variable pln1pay5_a         "Paid for by Medicaid - plan 1";
label variable pln1pay6_a         "Paid for by other government program - plan 1";
label variable hicostr1_a         "Out-of-pocket premium cost - plan 1";
label variable prdeduc1_a         "Deductible - plan 1";
label variable prhdhp1_a          "High deductible health plan - plan 1";
label variable hsahra1_a          "Health Savings Accounts / Health Reimbursement Accounts - plan 1";
label variable prrxcov1_a         "Plan pays for prescription drug - plan 1";
label variable prdncov1_a         "Plan pays for dental care - plan 1";
label variable prvscov1_a         "Plan pays for vision care - plan 1";
label variable exchpr1_a          "Exchange company coding NCHS - plan 1";
label variable prflg_a            "Private reassignment flag";
label variable pxchng1_a          "Marketplace or state exchange, reassigned from public to private";
label variable prprem1_a          "Premium on plan reassigned from public to private";
label variable plexchpr1_a        "Exchange company coding, NCHS, reassigned from public to private";
label variable polhld2_a          "Policyholder for private plan 2";
label variable prplcov2_a         "Plan coverage for others - plan 2";
label variable prpolh2_a          "Relation to policyholder - plan 2";
label variable prplcov2_c_a       "Response to PRPLCOV1_C or PRPLCOV2_C from child - plan 2";
label variable plnwrkr2_a         "How plan was originally obtained - plan 2";
label variable plnexchg2_a        "Health plan obtained through Marketplace - plan 2";
label variable pln2pay1_a         "Paid for by self or family - plan 2";
label variable pln2pay2_a         "Paid for by employer or union - plan 2";
label variable pln2pay3_a         "Paid for by someone outside the household - plan 2";
label variable pln2pay4_a         "Paid for by Medicare - plan 2";
label variable pln2pay5_a         "Paid for by Medicaid - plan 2";
label variable pln2pay6_a         "Paid for by other government program - plan 2";
label variable hicostr2_a         "Out-of-pocket premium cost - plan 2";
label variable prdeduc2_a         "Deductible - plan 2";
label variable prhdhp2_a          "High deductible health plan - plan 2";
label variable hsahra2_a          "Health Savings Accounts / Health Reimbursement Accounts - plan 2";
label variable prrxcov2_a         "Plan pays for prescription drug - plan 2";
label variable prdncov2_a         "Plan pays for dental care - plan 2";
label variable prvscov2_a         "Plan pays for vision care - plan 2";
label variable exchpr2_a          "Exchange company coding NCHS - plan 2";
label variable chip_a             "Children's Health Insurance Program (CHIP) recode";
label variable chxchng_a          "CHIP through Marketplace";
label variable chprem_a           "Pay CHIP premium";
label variable chdeduc_a          "CHIP deductible";
label variable chhdhp_a           "CHIP HDHP";
label variable chflg_a            "CHIP reassignment flag";
label variable othpub_a           "State-sponsored health plan recode";
label variable opxchng_a          "State-sponsored plan through Marketplace";
label variable opprem_a           "Pay premium for state-sponsored plan";
label variable opdeduc_a          "State-sponsored plan deductible";
label variable ophdhp_a           "State-sponsored plan HDHP";
label variable plexchop_a         "Exchange company coding, NCHS (state-sponsored plan)";
label variable opflg_a            "State-sponsored reassignment flag";
label variable othgov_a           "Other government program recode";
label variable ogxchng_a          "Other government program through Marketplace";
label variable ogprem_a           "Pay premium for other government program";
label variable ogdeduc_a          "Other government program deductible";
label variable oghdhp_a           "Other government program HDHP";
label variable plexchog_a         "Exchange company coding, NCHS (other government program)";
label variable ogflg_a            "Other government reassignment flag";
label variable military_a         "Military health care coverage recode";
label variable milspc1r_a         "Types of military health care - VA health care";
label variable milspc2_a          "Types of military health care - TRICARE";
label variable milspc3_a          "Types of military health care - CHAMP-VA";
label variable ihs_a              "Indian Health Service recode";
label variable hilast_a           "How long since last health coverage";
label variable hilastmy_a         "Number of months without coverage";
label variable histopjob_a        "Lost job or changed employers";
label variable histopmiss_a       "Missed deadline";
label variable histopage_a        "Ineligible because of age/left school";
label variable histopcost_a       "Cost increase";
label variable histopelig_a       "Not eligible for Medicaid, CHIP, or other public coverage";
label variable rsnhicost_a        "Not affordable";
label variable rsnhiwant_a        "Do not need or want coverage";
label variable rsnhielig_a        "Not eligible for coverage";
label variable rsnhiconf_a        "Signing up too difficult or confusing";
label variable rsnhimeet_a        "Cannot find a plan that meets the needs";
label variable rsnhiwait_a        "Coverage has not started yet";
label variable rsnhioth_a         "Another reason";
label variable rsnhijob_a         "Lost job";
label variable rsnhimiss_a        "Missed deadline";
label variable hinotyr_a          "No health coverage during the past 12 months";
label variable hinotmyr_a         "Months without coverage in the past 12 months";
label variable milspc1_a          "Types of military health care - VA health care";
label variable hicov_a            "Have health insurance";
label variable hikind01_a         "Kind(s) of health insurance - private health insurance";
label variable hikind02_a         "Kind(s) of health insurance - Medicare";
label variable hikind03_a         "Kind(s) of health insurance - Medicare supplement (Medigap)";
label variable hikind04_a         "Kind(s) of health insurance - Medicaid";
label variable hikind05_a         "Kind(s) of health insurance - CHIP";
label variable hikind06_a         "Kind(s) of health insurance - military related health care";
label variable hikind07_a         "Kind(s) of health insurance - Indian Health Service";
label variable hikind08_a         "Kind(s) of health insurance - State-sponsored health plan";
label variable hikind09_a         "Kind(s) of health insurance - Other government program";
label variable hikind10_a         "Kind(s) of health insurance - No coverage of any type";
label variable mcareprb_a         "Medicare coverage probe";
label variable mcaidprb_a         "Medicaid coverage probe";
 
* PAY  VARIABLE LABELS;
label variable paybll12m_a        "Problems paying medical bills, past 12m";
label variable paynobllnw_a       "Unable to pay medical bills";
label variable payworry_a         "Get sick or have accident, worry about paying medical bills";
 
* DNC  VARIABLE LABELS;
label variable denprev_a          "Time since last dental exam/cleaning";
label variable dendl12m_a         "Delayed dental care due to cost, past 12m";
label variable denng12m_a         "Needed dental care but did not get it due to cost, past 12m";
 
* UTZ  VARIABLE LABELS;
label variable lastdr_a           "Time since last saw doctor";
label variable wellness_a         "Was last visit a wellness visit";
label variable wellvis_a          "Time since last wellness visit";
label variable usualpl_a          "Have a usual place to go for care";
label variable usplkind_a         "Type of place for usual care";
label variable urgnt12mtc_a       "Number of times visited urgent care, past 12m, top-coded";
label variable emerg12mtc_a       "Number of times visited hospital emergency room, past 12m, top-coded";
label variable hospongt_a         "Hospitalized overnight, past 12m";
label variable meddl12m_a         "Delayed medical care due to cost, past 12m";
label variable medng12m_a         "Needed medical care but did not get it due to cost, past 12m";
 
* PMD  VARIABLE LABELS;
label variable rx12m_a            "Took prescription medication, past 12m";
label variable rxsk12m_a          "Skipped medication doses to save money, past 12m";
label variable rxls12m_a          "Took less medication to save money, past 12m";
label variable rxdl12m_a          "Delayed filling prescription to save money, past 12m";
label variable rxdg12m_a          "Needed prescription medication but did not get it due to cost, past 12m";
 
* OPD  VARIABLE LABELS;
label variable opd12m_a           "Opioid use - past 12 months";
label variable opd3m_a            "Opioid use - past 3 months";
label variable opdacute_a         "Opioid use for acute pain";
label variable opdchronic_a       "Opioid use for chronic pain";
label variable opdfreq_a          "Frequency of opioid use";
 
* PRV  VARIABLE LABELS;
label variable bplast_a           "Last time blood pressure checked";
label variable chollast_a         "Last time cholesterol checked";
label variable diablast_a         "Last time blood sugar test";
label variable colorectev_a       "Colonoscopy or sigmoidoscopy";
label variable colorectyp_a       "Colonoscopy or sigmoidoscopy or both";
label variable colwhen_a          "Most recent colonoscopy";
label variable colreason_a        "Why did you have a colonoscopy";
label variable colpay_a           "How much did you pay for most recent colonoscopy?";
label variable colsigwhen_a       "Most recent colonoscopy or sigmoidoscopy";
label variable sigwhen_a          "Most recent sigmoidoscopy";
label variable coloroth_a         "OTHER kind of test for colorectal cancer";
label variable ctcolev_a          "Ever had colonography/virtual colonoscopy";
label variable ctcolwhen_a        "Most recent colonography/virtual colonoscopy";
label variable fithev_a           "Ever had home blood stool test";
label variable fithwhen_a         "Most recent home blood stool test";
label variable cologuard_a        "Ever had Cologuard";
label variable fitcolg_a          "Was blood stool/FIT part of Cologuard test?";
label variable colproblem_a       "Did doctor recommend you be tested to look for problems in colon/rectum";
label variable colkind1_a         "Stool blood test/fecal occult blood/FIT test";
label variable colkind2_a         "Cologuard or FIT DNA test";
label variable colkind3_a         "Sigmoidoscopy";
label variable colkind4_a         "Colonoscopy";
label variable colkind5_a         "CT colonography/virtual colonoscopy";
label variable colkind6_a         "Other test for colon cancer";
label variable psatest_a          "Ever had a PSA test";
label variable psawhen_a          "When had most recent PSA test";
label variable psareason_a        "Reason had a PSA test";
label variable psasuggest_a       "Who suggested PSA test";
label variable psa5yrtc_a         "Number of PSA tests in last 5 years";
label variable psaadvant_a        "Did a doctor talk to you about advantages of PSA";
label variable psadisadv_a        "Did a doctor ever talk to you about the disadvantages of the PSA test?";
label variable cervicev_a         "Ever had cervical cancer screening test";
label variable cervicwhen_a       "When was most recent cervical cancer test";
label variable cerreason_a        "Reason for cervical cancer screening";
label variable paptest_a          "PAP test at most recent cervical cancer screening";
label variable hpvtest_a          "HPV test at most recent cervical cancer screening";
label variable cervicres_a        "Abnormal pap in past 5 years";
label variable cervicnot_a        "Why did not get a PAP/HPV test in past 5 years";
label variable hystev_a           "Had hysterectomy";
label variable mamev_a            "Ever had mammogram";
label variable mamwhen_a          "Most recent mammogram";
label variable mamreason_a        "Reason for mammogram";
label variable mamage1st_a        "Age of first mammogram";
label variable mamwhy1st_a        "Reason had first mammogram at age lt 50";
label variable breastexam_a       "Ever had breast exam from health professional";
label variable bexamwhen_a        "When was your last breast exam?";
label variable bexamreas_a        "Why did you have breast exam?";
 
* IMS  VARIABLE LABELS;
label variable pregfluyr_a        "Was SA pregnant last flu season";
label variable livebirth_a        "Any live births";
label variable shtflu12m_a        "Flu vaccine";
label variable shtflum_a          "Month of last flu vaccine";
label variable shtfluy_a          "Year of last flu vaccine";
label variable flupreg_a          "Was flu shot before or during pregnancy";
label variable flupreg2_a         "Earlier pregnancy and flu vaccine";
label variable shtpnuev_a         "Ever had pneumonia shot";
label variable shtpneunb_a        "Number of pneumonia shots";
label variable shtshingle_a       "Ever had a shingles vaccination";
label variable zostavax_a         "Ever had Zostavax";
label variable zostavxyrp_a       "When was most recent Zostavax shot";
label variable zostawhen_a        "Was Zostavax in 2018 or before 2018";
label variable shingrix_a         "Ever had Shingrix vaccination";
label variable shingrixnb_a       "How many Shingrix shots";
label variable shingrxyrp_a       "What year did you get your most recent Shingrix shot";
label variable shingwhen_a        "Was last Shingrix in 2018 or before 2018";
label variable tdappreg_a         "Have a Tdap booster shot";
label variable shttetanus_a       "Tetanus in past 10 years";
label variable shttdap_a          "What kind of tetanus shot";
label variable shthpv_a           "Ever had an hpv shot";
label variable shthpvagep_a       "Age at first HPV shot";
label variable workhealth_a       "Currently provide medical care to patients";
label variable wrkhlthfc_a        "Currently volunteer or work in health care";
 
* PTC  VARIABLE LABELS;
label variable eyeex12m_a         "Had eye exam, past 12m";
label variable thera12m_a         "Received physical/speech/rehabilitative/occupational therapy, past 12m";
label variable homehc12m_a        "Received care at home, past 12m";
 
* ANX  VARIABLE LABELS;
label variable anxfreq_a          "How often feel worried, nervous, or anxious";
label variable anxmed_a           "Take medication for worried/nervous/anxious feelings";
label variable anxlevel_a         "Level of feelings when last felt worried/nervous/anxious";
 
* DEP  VARIABLE LABELS;
label variable depfreq_a          "How often depressed";
label variable depmed_a           "Take medication for depression";
label variable deplevel_a         "Level of how depressed";
 
* MHC  VARIABLE LABELS;
label variable mhrx_a             "Took medicine for other emotions/concentration/behavior/mental health, past 12m";
label variable mhthrpy_a          "Received counseling/therapy from mental health professional, past 12m";
label variable mhtpynow_a         "Currently receiving counseling/therapy from mental health professional";
label variable mhthdly_a          "Delayed counseling/therapy due to cost, past 12m";
label variable mhthnd_a           "Needed counseling/therapy but did not get it due to cost, past 12m";
 
* PHQ  VARIABLE LABELS;
label variable phq81_a            "How often little interest in things, past 2 weeks";
label variable phq82_a            "How often feeling down, past 2 weeks";
label variable phq83_a            "How often trouble with sleeping, past 2 weeks";
label variable phq84_a            "How often feeling tired, past 2 weeks";
label variable phq85_a            "How often undereating or overeating, past 2 weeks";
label variable phq86_a            "How often feeling bad about self, past 2 weeks";
label variable phq87_a            "How often trouble concentrating, past 2 weeks";
label variable phq88_a            "How often moving or speaking slow or fast, past 2 weeks";
label variable phqcat_a           "Severity of depressive symptoms - PHQ scale categorization";
 
* GAD  VARIABLE LABELS;
label variable gad71_a            "How often felt nervous/anxious/on edge, past 2 weeks";
label variable gad72_a            "How often can't stop/control worrying, past 2 weeks";
label variable gad73_a            "How often worrying too much, past 2 weeks";
label variable gad74_a            "How often had trouble relaxing, past 2 weeks";
label variable gad75_a            "How often can't sit still, past 2 weeks";
label variable gad76_a            "How often became easily annoyed, past 2 weeks";
label variable gad77_a            "How often felt afraid, past 2 weeks";
label variable gadcat_a           "Severity of anxiety symptoms - GAD scale categorization";
 
* PAI  VARIABLE LABELS;
label variable paifrq3m_a         "How often had pain";
label variable paiamnt_a          "How much pain last time";
label variable paiwklm3m_a        "How often pain limits life/work";
label variable paiaffm3m_a        "How often pain impacts family";
label variable paiphystpy_a       "Physical therapy for pain";
label variable paichiro_a         "Chiropractic care for pain";
label variable paitalktpy_a       "Talk therapy for pain";
label variable paiprogram_a       "Self-management program for pain";
label variable paigroup_a         "Support groups for pain";
label variable paiyoga_a          "Yoga for pain";
label variable paimassage_a       "Massage for pain";
label variable paimeditat_a       "Meditation for pain";
label variable paimother_a        "Other methods for pain";
label variable painmeff_a         "Managing pain";
label variable paiback3m_a        "Back pain";
label variable paiulmb3m_a        "Pain in hands";
label variable paillmb3m_a        "Pain in hips";
label variable paihdfc3m_a        "Migraine";
label variable paiapg3m_a         "Abdominal pain";
label variable paitooth3m_a       "Toothache/jaw pain";
 
* ART  VARIABLE LABELS;
label variable jntsymp_a          "Arthritis symptoms, past 30 days";
label variable jntpn_a            "Arthritis pain, past 30 days";
label variable arthlmt_a          "Arthritis activity limitations";
label variable arthwrk_a          "Arthritis work limitations";
label variable arthwt_a           "Lose weight to help with arthritis";
label variable arthph_a           "Physical activity to help with arthritis";
 
* CIG  VARIABLE LABELS;
label variable smkev_a            "Ever smoked 100 cigarettes";
label variable smknow_a           "Now smoke cigarettes";
label variable smkcigst_a         "Cigarette smoking status";
label variable cignow_a           "Number of cigarettes a day";
label variable smk30d_a           "Number of days smoked past month";
label variable cig30d_a           "Number of cigarettes on days smoked past month";
label variable ecigev_a           "Ever used electronic cigarettes";
label variable ecignow_a          "Now use electronic cigarettes";
label variable smkecigst_a        "Electronic cigarette use status";
 
* OTB  VARIABLE LABELS;
label variable cigarev_a          "Ever smoked a cigar";
label variable cigarcur_a         "Now smoke cigars";
label variable cigar30d_a         "How many days smoked a cigar, past 30 days";
label variable pipeev_a           "Ever smoked a pipe filled with tobacco";
label variable pipecur_a          "Now smoked pipe filled with tobacco";
label variable smokelsev_a        "Ever used smokeless tobacco";
label variable smokelscur_a       "Now use smokeless tobacco";
 
* ORN  VARIABLE LABELS;
label variable orient_a           "Sexual orientation";
 
* MAR  VARIABLE LABELS;
label variable marital_a          "Sample adult's current marital status";
label variable spousliv_a         "Sample adult's spouse lives here";
label variable spousep_a          "Sample adult's spouse does not reside here due to legal separation";
label variable evrmarried_a       "Sample adult has ever been married";
label variable spousesex_a        "Sex of sample adult's spouse";
label variable saspphisp_a        "Hispanic ethnicity of sample adult and spouse or partner are the same";
label variable saspprace_a        "Race of sample adult and spouse or partner are the same";
label variable spousagetc_a       "Age of sample adult's spouse, top-coded";
label variable spouseduc_a        "Education level of sample adult's spouse";
label variable spouswrk_a         "Working status of sample adult's spouse";
label variable spouswkft_a        "Sample adult's spouse is working full-time";
label variable prtnrsex_a         "Sex of the sample adult's partner";
label variable prtnragetc_a       "Age of sample adult's partner, top-coded";
label variable prtnreduc_a        "Education level of sample adult's partner";
label variable prtnrwrk_a         "Working status of sample adult's partner";
label variable prtnrwkft_a        "Sample adult's partner is working full-time";
label variable marstat_a          "Current marital status of sample adult";
label variable legmstat_a         "Legal marital status of sample adult";
label variable parstat_a          "Parental Status of sample adult";
label variable saparentsc_a       "Sample adult relationship to sample child";
 
* VET  VARIABLE LABELS;
label variable afvet_a            "Ever serve active duty military";
label variable afvettrn_a         "Reserves or National Guard";
label variable combat_a           "Ever served abroad during armed conflict";
label variable vadisb_a           "Have VA disability rating";
label variable vahosp_a           "Receive care at VA facility";
label variable vacareev_a         "Ever use VA health care";
 
* NAT  VARIABLE LABELS;
label variable natusborn_a        "Born in U.S. or U.S. territory";
label variable yrsinus_a          "Years that sample adult has been in the United States";
label variable citznstp_a         "Citizenship status";
 
* SCH  VARIABLE LABELS;
label variable schcurenr_a        "Currently in school";
label variable schdymsstc_a       "Days missed due to illness/injury, past 12 m";
 
* EMP  VARIABLE LABELS;
label variable empwrklswk_a       "Worked last week";
label variable empwkhrs2_a        "Hours worked last week (topcoded for Public Use)";
label variable empwrkft_a         "Usually work 35+ hours per week";
label variable emprsnowk_a        "Main reason for not working last week";
label variable emplstwork_a       "Last time worked for pay";
label variable emppdsklv_a        "Received paid sick leave at last week's job or business";
label variable empoffhi_a         "Health insurance offered at job held last week";
label variable empdysmss2_a       "Days missed work in past 12 months due to illness/injury/disability (top-coded)";
 
* FEM  VARIABLE LABELS;
label variable pcntadtwkp_a       "Number of adults in sample adult's family who are working";
label variable pcntadtwfp_a       "Number of adults in sample adult's family who are working full-time";
 
* INC  VARIABLE LABELS;
label variable incwrko_a          "Income from wages";
label variable incinter_a         "Income from accounts";
label variable incssrr_a          "Income from SS/Railroad Retirement";
label variable incssissdi_a       "Family income from SSDI";
label variable ssissdibth_a       "Which family income SSI/SSDI";
label variable ssissdidsb_a       "SSI/SSDI due to disability";
label variable incwelf_a          "Income from public assistance";
label variable incretire_a        "Income from retirement";
label variable incothr_a          "Income from other sources";
label variable faminctc_a         "Sample adult family income (top-coded)";
label variable povrattc_a         "SA family poverty ratio (top-coded)";
label variable incgrp_a           "Sample adult family income (grouped)";
label variable ratcat_a           "Ratio of family income to poverty threshold for SA's family";
label variable impincflg_a        "Imputed SA family income imputation flag";
label variable inctcflg_a         "Sample adult family income top-code flag";
 
* FOO  VARIABLE LABELS;
label variable fsnap12m_a         "Receive food stamps, past 12m";
label variable fsnap30d_a         "Receive food stamps, past 30d";
label variable fwic12m_a          "Receive WIC benefits, past 12m";
label variable flunch12m_a        "Receive free/reduced meals at school";
 
* FDS  VARIABLE LABELS;
label variable fdsrunout_a        "Worry food would run out";
label variable fdslast_a          "Food didn't last";
label variable fdsbalance_a       "Couldn't afford to eat balanced meals";
label variable fdsskip_a          "Cut the size of meals or skip meals";
label variable fdsskipdys_a       "How many days did you/adults in the family cut the size of meals or skip meals";
label variable fdsless_a          "Eat less than should";
label variable fdshungry_a        "Ever hungry because not enough money for food";
label variable fdsweight_a        "Lose weight because not enough money for food";
label variable fdsnoteat_a        "Not eat for a whole day";
label variable fdsnedays_a        "How many days not eat";
label variable fdscat3_a          "Adult 3 category food security recode";
label variable fdscat4_a          "Adult  4 category food security recode";
 
* HOU  VARIABLE LABELS;
label variable houyrsliv_a        "Length of time in house/apartment";
label variable houtenure_a        "Residence owned/rented";
label variable hougvasst_a        "Paying lower rent";
 
* DEFINE VALUE LABELS FOR REPORTS;
 
label define SA001X
  1    "Underweight"
  2    "Healthy weight"
  3    "Overweight"
  4    "Obese"
  9    "Unknown"
;
 
label define SA002X
  1    "Reassigned to CHIP from private"
;
 
label define SA003X
  1    "Yes, a citizen of the United States"
  2    "No, not a citizen of the United States"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA004X
  1    "Private"
  2    "Medicaid and other public"
  3    "Other coverage"
  4    "Uninsured"
  5    "Don't Know"
;
 
label define SA005X
  1    "Private"
  2    "Dual eligible"
  3    "Medicare Advantage"
  4    "Medicare only excluding Medicare Advantage"
  5    "Other coverage"
  6    "Uninsured"
  7    "Don't Know"
;
 
label define SA006X
  1    "Current e-cigarette user"
  2    "Used e-cigarette, not current user"
  3    "Never e-cigarette user"
  4    "E-cigarette user, current status unknown"
  9    "Unknown if ever used e-cigarette"
;
 
label define SA007X
  01   "Grade 0-11"
  02   "12th grade, no diploma"
  03   "GED or equivalent"
  04   "High School Graduate"
  05   "Some college, no degree"
  06   "Associate degree: occupational, technical, or vocational program"
  07   "Associate degree: academic program"
  08   "Bachelor's degree (Example: BA, AB, BS, BBA)"
  09   "Master's degree (Example: MA, MS, MEng, MEd, MBA)"
  10   "Professional School degree (Example: MD, DDS, DVM, JD)"
  11   "Doctoral degree (Example: PhD, EdD)"
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA008X
  0    "0 times"
  1    "1 time"
  2    "2 times"
  3    "3 times"
  4    "4+ times"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA009X
  1    "Exchange plan"
  2    "Not exchange plan"
  8    "Not Ascertained"
;
 
label define SA010X
  1    "Company provides exchange plans"
  2    "Not an exchange company"
  3    "Exchange Portal or exact exchange plan name"
  8    "Not Ascertained"
;
 
label define SA011X
  1    "Food secure"
  2    "Low food security"
  3    "Very low food security"
  8    "Not Ascertained"
;
 
label define SA012X
  1    "High food security"
  2    "Marginal food security"
  3    "Low food security"
  4    "Very low food security"
  8    "Not Ascertained"
;
 
label define SA013X
  1    "Person is sample adult"
;
 
label define SA014X
  1    "Hispanic/Mexican/Mexican American"
  2    "Hispanic (all other groups)"
  3    "Not Hispanic"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA015X
  01   "Hispanic"
  02   "NH White only"
  03   "NH Black/African American only"
  04   "NH Asian only"
  05   "NH AIAN only"
  06   "NH AIAN and any other group"
  07   "Other single and multiple races"
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA016X
  96   "Reported age was under 9"
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA017X
  1    "$0 to $34,999"
  2    "$35,000 to $49,999"
  3    "$50,000 to $74,999"
  4    "$75,000 to $99,999"
  5    "$100,000 or greater"
  8    "Not Ascertained"
;
 
label define SA018X
  1    "Yes, information"
  2    "Yes, but no information"
  3    "No"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA019X
  1    "Quarter 1"
  2    "Quarter 2"
  3    "Quarter 3"
  4    "Quarter 4"
;
 
label define SA020X
  1    "Separated"
  2    "Divorced"
  3    "Married"
  4    "Single/never married"
  5    "Widowed"
  9    "Unknown legal marital status"
;
 
label define SA021X
  1    "Reassigned to Medicaid from private"
;
 
label define SA022X
  1    "Married, spouse is present"
  2    "Married, spouse is not present"
  3    "Married, spouse presence unknown"
  4    "Widowed"
  5    "Divorced"
  6    "Separated"
  7    "Never married"
  8    "Living with a partner"
  9    "Unknown marital status"
;
 
label define SA023X
  1    "Medicare Advantage"
  2    "Private plan not Medicare Advantage"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA024X
  1    "Mentioned"
  2    "Not mentioned"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA025X
  1    "Multiple families in household"
  2    "Only one family in household"
  9    "Unknown"
;
 
label define SA026X
  0    "None"
  1    "1 or more"
;
 
label define SA027X
  1    "Not covered"
  2    "Covered"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA028X
  1    "Reassigned to other government from private"
;
 
label define SA029X
  1    "Reassigned to other public from private"
;
 
label define SA030X
  1    "Yes, the sample adult is a parent of a child residing in the family"
  2    "There are minor children residing in family but sample adult is not their parent"
  3    "There are no minor children residing in the family"
  9    "Unknown"
;
 
label define SA031X
  0    "0 adults"
  1    "1 adult"
  2    "2 adults"
  3    "3+ adults"
  8    "Not Ascertained"
;
 
label define SA032X
  1    "1 adult"
  2    "2 adults"
  3    "3+ adults"
  8    "Not Ascertained"
;
 
label define SA033X
  1    "1 person"
  2    "2 persons"
  3    "3 persons"
  4    "4 persons"
  5    "5 persons"
  6    "6+ persons"
  8    "Not Ascertained"
;
 
label define SA034X
  0    "0 children"
  1    "1 child"
  2    "2 children"
  3    "3+ children"
  8    "Not Ascertained"
;
 
label define SA035X
  01   "Through an employer, union, or professional organization"
  02   "Purchased directly"
  03   "Through Healthcare.gov or the Affordable Care Act, also known as Obamacare"
  04   "Through a state or local government or community program"
  05   "Other"
  06   "Through school"
  07   "Through parents"
  08   "Through other relative"
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA036X
  1    "Reassigned to private from public"
;
 
label define SA037X
  1    "Deductible is less than $1,350"
  2    "Deductible is $1,350 or more"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA038X
  1    "White only"
  2    "Black/African American only"
  3    "Asian only"
  4    "AIAN only"
  5    "AIAN and any other group"
  6    "Other single and multiple races"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't know"
;
 
label define SA039X
  01   "0.00 - 0.49"
  02   "0.50 - 0.74"
  03   "0.75 - 0.99"
  04   "1.00 - 1.24"
  05   "1.25 - 1.49"
  06   "1.50 - 1.74"
  07   "1.75 - 1.99"
  08   "2.00 - 2.49"
  09   "2.50 - 2.99"
  10   "3.00 - 3.49"
  11   "3.50 - 3.99"
  12   "4.00 - 4.49"
  13   "4.50 - 4.99"
  14   "5.00 or greater"
  98   "Not Ascertained"
;
 
label define SA040X
  10   "Sample Adult"
  20   "Sample Child"
  30   "Sample Adult Income"
  40   "Sample Child Income"
  50   "Paradata"
;
 
label define SA041X
  1    "Northeast"
  2    "Midwest"
  3    "South"
  4    "West"
;
 
label define SA042X
  1    "Sample adult is parent of sample child"
  2    "Sample adult is not parent of  sample child"
  3    "No sample child in sample adult's family"
  9    "Unknown"
;
 
label define SA043X
  1    "Current every day smoker"
  2    "Current some day smoker"
  3    "Former smoker"
  4    "Never smoker"
  5    "Smoker, current status unknown"
  9    "Unknown if ever smoked"
;
 
label define SA044X
  1    "None/Minimal"
  2    "Mild"
  3    "Moderate"
  4    "Severe"
  8    "Not Ascertained"
;
 
label define SA045X
  0    "0 times"
  1    "1 time"
  2    "2 times"
  3    "3 times"
  4    "4 times"
  5    "5+ times"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA046X
  1    "Large central metro"
  2    "Large fringe metro"
  3    "Medium and small metro"
  4    "Nonmetropolitan"
;
 
label define SA047X
  1    "Yes"
  2    "No"
  9    "Don't Know"
;
 
label define SA048X
  0    "No"
  1    "Yes"
;
 
label define SA049X
  1    "Yes"
  2    "No"
  3    "Unknown"
;
 
label define SA050X
  1    "Yes"
;
 
label define SA051X
  1    "Less than 1 year"
  2    "1 to less than 5 years"
  3    "5 to less than 10 years"
  4    "10 to less than 15 years"
  5    "15 years or more"
  9    "Unknown"
;
 
label define SA052X
  1    "Less than 65"
  2    "65 or older"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA053X
  1    "Very worried"
  2    "Somewhat worried"
  3    "Not at all worried"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA054X
  1    "A few things"
  2    "A lot of things"
  3    "Almost everything"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA055X
  1    "Sometimes"
  2    "Often"
  3    "All of the time"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA056X
  1    "Difficulty remembering only"
  2    "Difficulty concentrating only"
  3    "Difficulty with both remembering and concentrating"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA057X
  1    "Colonoscopy"
  2    "Sigmoidoscopy"
  3    "Both"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA058X
  1    "Part of a routine exam"
  2    "Because of a problem"
  3    "Follow-up test of an earlier test or screening exam"
  4    "Other reason"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA059X
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA060X
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA061X
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA062X
  1    "Less than 1 month"
  2    "1 month to less than 6 months"
  3    "6 months to less than 1 year"
  4    "1 year or more"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA063X
  1    "Type 1"
  2    "Type 2"
  3    "Other type of diabetes"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA064X
  1    "No difficulty"
  2    "Some difficulty"
  3    "A lot of difficulty"
  4    "Cannot do at all"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA065X
  00   "Never attended/kindergarten only"
  01   "Grade 1-11"
  02   "12th grade, no diploma"
  03   "GED or equivalent"
  04   "High School Graduate"
  05   "Some college, no degree"
  06   "Associate degree: occupational, technical, or vocational program"
  07   "Associate degree: academic program"
  08   "Bachelor's degree (Example: BA, AB, BS, BBA)"
  09   "Master's degree (Example: MA, MS, MEng, MEd, MBA)"
  10   "Professional School degree (Example: MD, DDS, DVM, JD)"
  11   "Doctoral degree (Example: PhD, EdD)"
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA066X
  1    "Very effective"
  2    "Somewhat effective"
  3    "Only a little effective"
  4    "Not at all effective"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA067X
  1    "Within the past 12 months"
  2    "1-5 years ago"
  3    "Over 5 years ago"
  4    "Never worked"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA068X
  01   "Unemployed, laid off, seasonal/contract work, looking for work"
  02   "Seasonal/contract work"
  03   "Retired"
  04   "Unable to work for health reasons/disabled"
  05   "Taking care of house or family"
  06   "Going to school"
  07   "Working at job business but not for pay"
  08   "Other"
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA069X
  1    "Part of a routine exam"
  2    "Because of a problem"
  3    "Other reason"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA070X
  1    "Every day"
  2    "Some days"
  3    "Not at all"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA071X
  1    "All of the time"
  2    "Some of the time"
  3    "Rarely"
  4    "Never"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA072X
  1    "Owned or being bought"
  2    "Rented"
  3    "Other arrangement"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA073X
  1    "Never"
  2    "Some days"
  3    "Most days"
  4    "Every day"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA074X
  1    "Daily"
  2    "Weekly"
  3    "Monthly"
  4    "A few times a year"
  5    "Never"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA075X
  1    "A little"
  2    "A lot"
  3    "Somewhere in between a little and a lot"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA076X
  1    "Married"
  2    "Living with a partner together as an unmarried couple"
  3    "Neither"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA077X
  1    "Part A- hospital only"
  2    "Part B- medical only"
  3    "Both Part A and Part B"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA078X
  1    "Mentioned"
  2    "Not mentioned"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA079X
  01   "January"
  02   "February"
  03   "March"
  04   "April"
  05   "May"
  06   "June"
  07   "July"
  08   "August"
  09   "September"
  10   "October"
  11   "November"
  12   "December"
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA080X
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA081X
  1    "Not at all"
  2    "A little"
  3    "A lot"
  4    "Somewhere in between a little and a lot"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA082X
  1    "Some days"
  2    "Most days"
  3    "Every day"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA083X
  1    "^GayLesbian"
  2    "Straight, that is, not ^gaylesbian"
  3    "Bisexual"
  4    "Something else"
  5    "I don't know the answer"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA084X
  01   "No reason/never thought about it"
  02   "Didn't need it/didn't know I needed this type of test"
  03   "Doctor didn't order it/didn't say I needed it"
  04   "Haven't had any problems"
  05   "Put it off/didn't get around to it"
  06   "Too expensive/no insurance/cost"
  07   "Too painful, unpleasant, or embarrassing"
  08   "Had hysterectomy"
  09   "Don't have a doctor"
  10   "Had HPV vaccine"
  11   "Other"
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA085X
  1    "Not at all"
  2    "Several days"
  3    "More than half the days"
  4    "Nearly every day"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA086X
  1    "Excellent"
  2    "Very Good"
  3    "Good"
  4    "Fair"
  5    "Poor"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA087X
  1    "A doctor's office or health center"
  2    "Urgent care center or clinic in a drug store or grocery store"
  3    "Hospital emergency room"
  4    "A VA Medical Center or VA outpatient clinic"
  5    "Some other place"
  6    "Does not go to one place most often"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA088X
  1    "Less than ^HDHPAMT_A"
  2    "^HDHPAMT_A or more"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA089X
  1    "Relative who lives in household"
  2    "Relative who doesn't live in household"
  3    "Nonrelative who lives in household"
  4    "Nonrelative who does not live in household"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA090X
  1    "Child"
  2    "Spouse"
  3    "Former spouse"
  4    "Some other relationship"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA091X
  1    "None of the cost"
  2    "Part of the cost"
  3    "All of the cost"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA092X
  1    "Part of a routine exam"
  2    "Because of a problem"
  3    "Other reason"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA093X
  1    "Self"
  2    "Doctor"
  3    "Someone else"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA094X
  1    "One pneumonia shot"
  2    "Two pneumonia shots"
  3    "More than two pneumonia shots"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA095X
  1    "Available"
  2    "Not Available or not able to answer right now"
  3    "Physical or mental condition prohibits responding"
  7    "Refused"
  8    "Not Ascertained"
;
 
label define SA096X
  97   "Refused"
  98   "Not Ascertained"
  99   "Don't Know"
;
 
label define SA097X
  1    "Male"
  2    "Female"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA098X
  1    "One Shingrix shot"
  2    "Two Shingrix shots"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA099X
  1    "SSI"
  2    "SSDI"
  3    "Both SSI and SSDI"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA100X
  0    "Not applicable/None eligible"
  1    "Completed"
  2    "HH member selected"
  3    "Reached Sample Adult"
  4    "Started HIS section"
  5    "Sufficient Partial"
  6    "HH member selected and no longer eligible"
  7    "Refused"
;
 
label define SA101X
  1    "Within the past year (anytime less than 12 months ago)"
  2    "Within the past 2 years (1 year but less than 2 years ago)"
  3    "Within the past 3 years (2 years but less than 3 years ago)"
  4    "Within the past 5 years (3 years but less than 5 years ago)"
  5    "Within the past 10 years (5 years but less than 10 year ago)"
  6    "10 years ago or more"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA102X
  0    "Never"
  1    "Within the past year (anytime less than 12 months ago)"
  2    "Within the last 2 years (1 year but less than 2 years ago)"
  3    "Within the last 3 years (2 years but less than 3 years ago)"
  4    "Within the last 5 years (3 years but less than 5 years ago)"
  5    "Within the last 10 years (5 years but less than 10 years ago)"
  6    "10 years ago or more"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA103X
  1    "Less than 1 year"
  2    "1 to 3 years"
  3    "4 to 10 years"
  4    "11 to 20 years"
  5    "More than 20 years"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA104X
  1    "Often true"
  2    "Sometimes true"
  3    "Never true"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA105X
  1    "Yes"
  2    "There is NO place"
  3    "There is MORE THAN ONE place"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA106X
  9997 "Refused"
  9998 "Not Ascertained"
  9999 "Don't Know"
;
 
label define SA107X
  1    "Yes"
  2    "No"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA108X
  1    "Before pregnancy"
  2    "During pregnancy"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA109X
  1    "Before pregnancy"
  2    "During pregnancy"
  3    "After pregnancy"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA110X
  1    "Under 30 years"
  2    "30-39"
  3    "40-49"
  4    "50-59"
  5    "60 years or older"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
label define SA111X
  1    "Because of a breast problem"
  2    "My healthcare provider told me I was high-risk"
  3    "Family history of breast cancer"
  4    "Part of a routine exam"
  5    "I requested it"
  6    "Other reason"
  7    "Refused"
  8    "Not Ascertained"
  9    "Don't Know"
;
 
* ASSOCIATE VARIABLES WITH VALUE LABEL DEFINITIONS;
 
* IDN  VALUE LABEL ASSOCIATIONS;
label values  rectype          SA040X; 
 
* UCF  VALUE LABEL ASSOCIATIONS;
label values  urbrrl           SA046X; label values   region           SA041X; 
 
* GEN  VALUE LABEL ASSOCIATIONS;
label values  intv_qrt         SA019X; label values   hhstat_a         SA013X;
label values  astatnew         SA100X; label values   avail_a          SA095X;
label values  proxy_a          SA107X; label values   proxyrel_a       SA089X; 
 
* FLG  VALUE LABEL ASSOCIATIONS;
label values  hhrespsa_flg     SA050X; 
 
* HHC  VALUE LABEL ASSOCIATIONS;
label values  age65            SA052X; label values   sex_a            SA097X;
label values  educ_a           SA065X; label values   afnow            SA107X;
label values  hisp_a           SA107X; label values   hispallp_a       SA015X;
label values  hisdetp_a        SA014X; label values   raceallp_a       SA038X;
label values  pcnttc           SA033X; label values   pcnt18uptc       SA031X;
label values  pcntlt18tc       SA034X; 
 
* FAM  VALUE LABEL ASSOCIATIONS;
label values  pcntfam_a        SA033X; label values   pcntadlt_a       SA032X;
label values  pcntkids_a       SA034X; label values   over65flg_a      SA026X;
label values  mltfamflg_a      SA025X; label values   maxeduc_a        SA065X; 
 
* HIS  VALUE LABEL ASSOCIATIONS;
label values  phstat_a         SA086X; 
 
* HYP  VALUE LABEL ASSOCIATIONS;
label values  hypev_a          SA107X; label values   hypdif_a         SA107X;
label values  hyp12m_a         SA107X; label values   hypmed_a         SA107X; 
 
* CHL  VALUE LABEL ASSOCIATIONS;
label values  chlev_a          SA107X; label values   chl12m_a         SA107X;
label values  chlmed_a         SA107X; 
 
* CVC  VALUE LABEL ASSOCIATIONS;
label values  chdev_a          SA107X; label values   angev_a          SA107X;
label values  miev_a           SA107X; label values   strev_a          SA107X; 
 
* ASP  VALUE LABEL ASSOCIATIONS;
label values  aspmedev_a       SA107X; label values   aspmednown_a     SA107X;
label values  aspmedstp_a      SA107X; label values   asponown_a       SA107X; 
 
* AST  VALUE LABEL ASSOCIATIONS;
label values  asev_a           SA107X; label values   astill_a         SA107X;
label values  asat12m_a        SA107X; label values   aser12m_a        SA107X; 
 
* CAN  VALUE LABEL ASSOCIATIONS;
label values  canev_a          SA107X; label values   bladdcan_a       SA024X;
label values  bloodcan_a       SA024X; label values   bonecan_a        SA024X;
label values  braincan_a       SA024X; label values   breascan_a       SA024X;
label values  cervican_a       SA024X; label values   coloncan_a       SA024X;
label values  esophcan_a       SA024X; label values   gallbcan_a       SA024X;
label values  laryncan_a       SA024X; label values   leukecan_a       SA024X;
label values  livercan_a       SA024X; label values   lungcan_a        SA024X;
label values  lymphcan_a       SA024X; label values   melancan_a       SA024X;
label values  mouthcan_a       SA024X; label values   ovarycan_a       SA024X;
label values  pancrcan_a       SA024X; label values   prostcan_a       SA024X;
label values  rectucan_a       SA024X; label values   sknmcan_a        SA024X;
label values  sknnmcan_a       SA024X; label values   skndkcan_a       SA024X;
label values  stomacan_a       SA024X; label values   throacan_a       SA024X;
label values  thyrocan_a       SA024X; label values   uterucan_a       SA024X;
label values  hdnckcan_a       SA024X; label values   colrccan_a       SA024X;
label values  othercanp_a      SA024X; 
 
* DIB  VALUE LABEL ASSOCIATIONS;
label values  predib_a         SA107X; label values   gesdib_a         SA107X;
label values  dibev_a          SA107X; label values   dibpill_a        SA107X;
label values  dibins_a         SA107X; label values   dibinstime_a     SA062X;
label values  dibinsstop_a     SA107X; label values   dibinsstyr_a     SA107X;
label values  dibtype_a        SA063X; 
 
* CON  VALUE LABEL ASSOCIATIONS;
label values  copdev_a         SA107X; label values   arthev_a         SA107X;
label values  demenev_a        SA107X; label values   anxev_a          SA107X;
label values  depev_a          SA107X; 
 
* BMI  VALUE LABEL ASSOCIATIONS;
label values  pregnow_a        SA107X; label values   bmicat_a         SA001X; 
 
* VIS  VALUE LABEL ASSOCIATIONS;
label values  wearglss_a       SA107X; label values   visiondf_a       SA064X; 
 
* HEA  VALUE LABEL ASSOCIATIONS;
label values  hearaid_a        SA107X; label values   hearaidfr_a      SA071X;
label values  hearingdf_a      SA064X; 
 
* MOB  VALUE LABEL ASSOCIATIONS;
label values  diff_a           SA064X; label values   equip_a          SA107X;
label values  wlk100_a         SA064X; label values   wlk13m_a         SA064X;
label values  steps_a          SA064X; label values   canewlkr_a       SA107X;
label values  wchair_a         SA107X; label values   perasst_a        SA107X;
label values  noeqwlk100_a     SA064X; label values   noeqwlk13m_a     SA064X;
label values  noeqsteps_a      SA064X; label values   eqwlk100_a       SA064X;
label values  eqwlk13m_a       SA064X; label values   eqsteps_a        SA064X; 
 
* COM  VALUE LABEL ASSOCIATIONS;
label values  comdiff_a        SA064X; 
 
* COG  VALUE LABEL ASSOCIATIONS;
label values  cogmemdff_a      SA064X; label values   cogtypedff_a     SA056X;
label values  cogfrqdff_a      SA055X; label values   cogamtdff_a      SA054X; 
 
* UPP  VALUE LABEL ASSOCIATIONS;
label values  uppslfcr_a       SA064X; label values   uppraise_a       SA064X;
label values  uppobjct_a       SA064X; label values   disab3_a         SA047X; 
 
* SOC  VALUE LABEL ASSOCIATIONS;
label values  socerrnds_a      SA064X; label values   socsclpar_a      SA064X;
label values  socwrklim_a      SA107X; 
 
* INS  VALUE LABEL ASSOCIATIONS;
label values  notcov_a         SA027X; label values   cover_a          SA004X;
label values  cover65_a        SA005X; label values   sincovde_a       SA107X;
label values  sincovvs_a       SA107X; label values   sincovrx_a       SA107X;
label values  medicare_a       SA018X; label values   mcpart_a         SA077X;
label values  mcchoice_a       SA107X; label values   mchmo_a          SA107X;
label values  mcadvr_a         SA023X; label values   mcpartd_a        SA107X;
label values  medicaid_a       SA018X; label values   maxchng_a        SA107X;
label values  maprem_a         SA107X; label values   madeduc_a        SA107X;
label values  mahdhp_a         SA037X; label values   maflg_a          SA021X;
label values  private_a        SA018X; label values   exchange_a       SA009X;
label values  polhld1_a        SA107X; label values   prplcov1_a       SA107X;
label values  prpolh1_a        SA090X; label values   prplcov1_c_a     SA107X;
label values  plnwrkr1_a       SA035X; label values   plnexchg1_a      SA107X;
label values  pln1pay1_a       SA078X; label values   pln1pay2_a       SA078X;
label values  pln1pay3_a       SA078X; label values   pln1pay4_a       SA078X;
label values  pln1pay5_a       SA078X; label values   pln1pay6_a       SA078X;
label values  prdeduc1_a       SA107X; label values   prhdhp1_a        SA088X;
label values  hsahra1_a        SA107X; label values   prrxcov1_a       SA107X;
label values  prdncov1_a       SA107X; label values   prvscov1_a       SA107X;
label values  exchpr1_a        SA010X; label values   prflg_a          SA036X;
label values  pxchng1_a        SA107X; label values   prprem1_a        SA107X;
label values  plexchpr1_a      SA010X; label values   polhld2_a        SA107X;
label values  prplcov2_a       SA107X; label values   prpolh2_a        SA090X;
label values  prplcov2_c_a     SA107X; label values   plnwrkr2_a       SA035X;
label values  plnexchg2_a      SA107X; label values   pln2pay1_a       SA078X;
label values  pln2pay2_a       SA078X; label values   pln2pay3_a       SA078X;
label values  pln2pay4_a       SA078X; label values   pln2pay5_a       SA078X;
label values  pln2pay6_a       SA078X; label values   prdeduc2_a       SA107X;
label values  prhdhp2_a        SA088X; label values   hsahra2_a        SA107X;
label values  prrxcov2_a       SA107X; label values   prdncov2_a       SA107X;
label values  prvscov2_a       SA107X; label values   exchpr2_a        SA010X;
label values  chip_a           SA018X; label values   chxchng_a        SA107X;
label values  chprem_a         SA107X; label values   chdeduc_a        SA107X;
label values  chhdhp_a         SA037X; label values   chflg_a          SA002X;
label values  othpub_a         SA018X; label values   opxchng_a        SA107X;
label values  opprem_a         SA107X; label values   opdeduc_a        SA107X;
label values  ophdhp_a         SA037X; label values   plexchop_a       SA010X;
label values  opflg_a          SA029X; label values   othgov_a         SA018X;
label values  ogxchng_a        SA107X; label values   ogprem_a         SA107X;
label values  ogdeduc_a        SA107X; label values   oghdhp_a         SA037X;
label values  plexchog_a       SA010X; label values   ogflg_a          SA028X;
label values  military_a       SA018X; label values   milspc1r_a       SA078X;
label values  milspc2_a        SA078X; label values   milspc3_a        SA078X;
label values  ihs_a            SA107X; label values   hilast_a         SA102X;
label values  hilastmy_a       SA080X; label values   histopjob_a      SA107X;
label values  histopmiss_a     SA107X; label values   histopage_a      SA107X;
label values  histopcost_a     SA107X; label values   histopelig_a     SA107X;
label values  rsnhicost_a      SA107X; label values   rsnhiwant_a      SA107X;
label values  rsnhielig_a      SA107X; label values   rsnhiconf_a      SA107X;
label values  rsnhimeet_a      SA107X; label values   rsnhiwait_a      SA107X;
label values  rsnhioth_a       SA107X; label values   rsnhijob_a       SA107X;
label values  rsnhimiss_a      SA107X; label values   hinotyr_a        SA107X;
label values  hinotmyr_a       SA080X; label values   milspc1_a        SA078X;
label values  hicov_a          SA107X; label values   hikind01_a       SA078X;
label values  hikind02_a       SA078X; label values   hikind03_a       SA078X;
label values  hikind04_a       SA078X; label values   hikind05_a       SA078X;
label values  hikind06_a       SA078X; label values   hikind07_a       SA078X;
label values  hikind08_a       SA078X; label values   hikind09_a       SA078X;
label values  hikind10_a       SA078X; label values   mcareprb_a       SA107X;
label values  mcaidprb_a       SA107X; 
 
* PAY  VALUE LABEL ASSOCIATIONS;
label values  paybll12m_a      SA107X; label values   paynobllnw_a     SA107X;
label values  payworry_a       SA053X; 
 
* DNC  VALUE LABEL ASSOCIATIONS;
label values  denprev_a        SA102X; label values   dendl12m_a       SA107X;
label values  denng12m_a       SA107X; 
 
* UTZ  VALUE LABEL ASSOCIATIONS;
label values  lastdr_a         SA102X; label values   wellness_a       SA107X;
label values  wellvis_a        SA102X; label values   usualpl_a        SA105X;
label values  usplkind_a       SA087X; label values   urgnt12mtc_a     SA045X;
label values  emerg12mtc_a     SA008X; label values   hospongt_a       SA107X;
label values  meddl12m_a       SA107X; label values   medng12m_a       SA107X; 
 
* PMD  VALUE LABEL ASSOCIATIONS;
label values  rx12m_a          SA107X; label values   rxsk12m_a        SA107X;
label values  rxls12m_a        SA107X; label values   rxdl12m_a        SA107X;
label values  rxdg12m_a        SA107X; 
 
* OPD  VALUE LABEL ASSOCIATIONS;
label values  opd12m_a         SA107X; label values   opd3m_a          SA107X;
label values  opdacute_a       SA107X; label values   opdchronic_a     SA107X;
label values  opdfreq_a        SA082X; 
 
* PRV  VALUE LABEL ASSOCIATIONS;
label values  bplast_a         SA102X; label values   chollast_a       SA102X;
label values  diablast_a       SA102X; label values   colorectev_a     SA107X;
label values  colorectyp_a     SA057X; label values   colwhen_a        SA101X;
label values  colreason_a      SA058X; label values   colpay_a         SA091X;
label values  colsigwhen_a     SA101X; label values   sigwhen_a        SA101X;
label values  coloroth_a       SA107X; label values   ctcolev_a        SA107X;
label values  ctcolwhen_a      SA101X; label values   fithev_a         SA107X;
label values  fithwhen_a       SA101X; label values   cologuard_a      SA107X;
label values  fitcolg_a        SA107X; label values   colproblem_a     SA107X;
label values  colkind1_a       SA078X; label values   colkind2_a       SA078X;
label values  colkind3_a       SA078X; label values   colkind4_a       SA078X;
label values  colkind5_a       SA078X; label values   colkind6_a       SA107X;
label values  psatest_a        SA107X; label values   psawhen_a        SA101X;
label values  psareason_a      SA092X; label values   psasuggest_a     SA093X;
label values  psaadvant_a      SA107X; label values   psadisadv_a      SA107X;
label values  cervicev_a       SA107X; label values   cervicwhen_a     SA101X;
label values  cerreason_a      SA058X; label values   paptest_a        SA107X;
label values  hpvtest_a        SA107X; label values   cervicres_a      SA107X;
label values  cervicnot_a      SA084X; label values   hystev_a         SA107X;
label values  mamev_a          SA107X; label values   mamwhen_a        SA101X;
label values  mamreason_a      SA069X; label values   mamage1st_a      SA110X;
label values  mamwhy1st_a      SA111X; label values   breastexam_a     SA107X;
label values  bexamwhen_a      SA101X; label values   bexamreas_a      SA092X; 
 
* IMS  VALUE LABEL ASSOCIATIONS;
label values  pregfluyr_a      SA107X; label values   livebirth_a      SA107X;
label values  shtflu12m_a      SA107X; label values   shtflum_a        SA079X;
label values  shtfluy_a        SA106X; label values   flupreg_a        SA108X;
label values  flupreg2_a       SA109X; label values   shtpnuev_a       SA107X;
label values  shtpneunb_a      SA094X; label values   shtshingle_a     SA107X;
label values  zostavax_a       SA107X; label values   zostawhen_a      SA107X;
label values  shingrix_a       SA107X; label values   shingrixnb_a     SA098X;
label values  shingwhen_a      SA107X; label values   tdappreg_a       SA107X;
label values  shttetanus_a     SA107X; label values   shttdap_a        SA107X;
label values  shthpv_a         SA107X; label values   shthpvagep_a     SA016X;
label values  workhealth_a     SA107X; label values   wrkhlthfc_a      SA107X; 
 
* PTC  VALUE LABEL ASSOCIATIONS;
label values  eyeex12m_a       SA107X; label values   thera12m_a       SA107X;
label values  homehc12m_a      SA107X; 
 
* ANX  VALUE LABEL ASSOCIATIONS;
label values  anxfreq_a        SA074X; label values   anxmed_a         SA107X;
label values  anxlevel_a       SA075X; 
 
* DEP  VALUE LABEL ASSOCIATIONS;
label values  depfreq_a        SA074X; label values   depmed_a         SA107X;
label values  deplevel_a       SA075X; 
 
* MHC  VALUE LABEL ASSOCIATIONS;
label values  mhrx_a           SA107X; label values   mhthrpy_a        SA107X;
label values  mhtpynow_a       SA107X; label values   mhthdly_a        SA107X;
label values  mhthnd_a         SA107X; 
 
* PHQ  VALUE LABEL ASSOCIATIONS;
label values  phq81_a          SA085X; label values   phq82_a          SA085X;
label values  phq83_a          SA085X; label values   phq84_a          SA085X;
label values  phq85_a          SA085X; label values   phq86_a          SA085X;
label values  phq87_a          SA085X; label values   phq88_a          SA085X;
label values  phqcat_a         SA044X; 
 
* GAD  VALUE LABEL ASSOCIATIONS;
label values  gad71_a          SA085X; label values   gad72_a          SA085X;
label values  gad73_a          SA085X; label values   gad74_a          SA085X;
label values  gad75_a          SA085X; label values   gad76_a          SA085X;
label values  gad77_a          SA085X; label values   gadcat_a         SA044X; 
 
* PAI  VALUE LABEL ASSOCIATIONS;
label values  paifrq3m_a       SA073X; label values   paiamnt_a        SA075X;
label values  paiwklm3m_a      SA073X; label values   paiaffm3m_a      SA073X;
label values  paiphystpy_a     SA107X; label values   paichiro_a       SA107X;
label values  paitalktpy_a     SA107X; label values   paiprogram_a     SA107X;
label values  paigroup_a       SA107X; label values   paiyoga_a        SA107X;
label values  paimassage_a     SA107X; label values   paimeditat_a     SA107X;
label values  paimother_a      SA107X; label values   painmeff_a       SA066X;
label values  paiback3m_a      SA081X; label values   paiulmb3m_a      SA081X;
label values  paillmb3m_a      SA081X; label values   paihdfc3m_a      SA081X;
label values  paiapg3m_a       SA081X; label values   paitooth3m_a     SA081X; 
 
* ART  VALUE LABEL ASSOCIATIONS;
label values  jntsymp_a        SA107X; label values   jntpn_a          SA096X;
label values  arthlmt_a        SA107X; label values   arthwrk_a        SA107X;
label values  arthwt_a         SA107X; label values   arthph_a         SA107X; 
 
* CIG  VALUE LABEL ASSOCIATIONS;
label values  smkev_a          SA107X; label values   smknow_a         SA070X;
label values  smkcigst_a       SA043X; label values   cignow_a         SA061X;
label values  smk30d_a         SA059X; label values   cig30d_a         SA061X;
label values  ecigev_a         SA107X; label values   ecignow_a        SA070X;
label values  smkecigst_a      SA006X; 
 
* OTB  VALUE LABEL ASSOCIATIONS;
label values  cigarev_a        SA107X; label values   cigarcur_a       SA070X;
label values  cigar30d_a       SA059X; label values   pipeev_a         SA107X;
label values  pipecur_a        SA070X; label values   smokelsev_a      SA107X;
label values  smokelscur_a     SA070X; 
 
* ORN  VALUE LABEL ASSOCIATIONS;
label values  orient_a         SA083X; 
 
* MAR  VALUE LABEL ASSOCIATIONS;
label values  marital_a        SA076X; label values   spousliv_a       SA107X;
label values  spousep_a        SA107X; label values   evrmarried_a     SA107X;
label values  spousesex_a      SA097X; label values   saspphisp_a      SA049X;
label values  saspprace_a      SA049X; label values   spouseduc_a      SA007X;
label values  spouswrk_a       SA107X; label values   spouswkft_a      SA107X;
label values  prtnrsex_a       SA097X; label values   prtnreduc_a      SA007X;
label values  prtnrwrk_a       SA107X; label values   prtnrwkft_a      SA107X;
label values  marstat_a        SA022X; label values   legmstat_a       SA020X;
label values  parstat_a        SA030X; label values   saparentsc_a     SA042X; 
 
* VET  VALUE LABEL ASSOCIATIONS;
label values  afvet_a          SA107X; label values   afvettrn_a       SA107X;
label values  combat_a         SA107X; label values   vadisb_a         SA107X;
label values  vahosp_a         SA107X; label values   vacareev_a       SA107X; 
 
* NAT  VALUE LABEL ASSOCIATIONS;
label values  natusborn_a      SA107X; label values   yrsinus_a        SA051X;
label values  citznstp_a       SA003X; 
 
* SCH  VALUE LABEL ASSOCIATIONS;
label values  schcurenr_a      SA107X; 
 
* EMP  VALUE LABEL ASSOCIATIONS;
label values  empwrklswk_a     SA107X; label values   empwrkft_a       SA107X;
label values  emprsnowk_a      SA068X; label values   emplstwork_a     SA067X;
label values  emppdsklv_a      SA107X; label values   empoffhi_a       SA107X; 
 
* FEM  VALUE LABEL ASSOCIATIONS;
label values  pcntadtwkp_a     SA031X; label values   pcntadtwfp_a     SA031X; 
 
* INC  VALUE LABEL ASSOCIATIONS;
label values  incwrko_a        SA107X; label values   incinter_a       SA107X;
label values  incssrr_a        SA107X; label values   incssissdi_a     SA107X;
label values  ssissdibth_a     SA099X; label values   ssissdidsb_a     SA107X;
label values  incwelf_a        SA107X; label values   incretire_a      SA107X;
label values  incothr_a        SA107X; label values   incgrp_a         SA017X;
label values  ratcat_a         SA039X; label values   inctcflg_a       SA048X; 
 
* FOO  VALUE LABEL ASSOCIATIONS;
label values  fsnap12m_a       SA107X; label values   fsnap30d_a       SA107X;
label values  fwic12m_a        SA107X; label values   flunch12m_a      SA107X; 
 
* FDS  VALUE LABEL ASSOCIATIONS;
label values  fdsrunout_a      SA104X; label values   fdslast_a        SA104X;
label values  fdsbalance_a     SA104X; label values   fdsskip_a        SA107X;
label values  fdsskipdys_a     SA060X; label values   fdsless_a        SA107X;
label values  fdshungry_a      SA107X; label values   fdsweight_a      SA107X;
label values  fdsnoteat_a      SA107X; label values   fdsnedays_a      SA060X;
label values  fdscat3_a        SA011X; label values   fdscat4_a        SA012X; 
 
* HOU  VALUE LABEL ASSOCIATIONS;
label values  houyrsliv_a      SA103X; label values   houtenure_a      SA072X;
label values  hougvasst_a      SA107X; 
 
describe;
#delimit cr
 
* data file is stored in adult.dta
* log  file is stored in adult.log
 
log close
