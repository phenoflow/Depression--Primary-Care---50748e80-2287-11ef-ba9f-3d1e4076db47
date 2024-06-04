cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  affective-depression--primary-care---primary:
    run: affective-depression--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  depression--primary-care-xmajor---primary:
    run: depression--primary-care-xmajor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: affective-depression--primary-care---primary/output
  current-depression--primary-care---primary:
    run: current-depression--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: depression--primary-care-xmajor---primary/output
  depression--primary-care-unspecied---primary:
    run: depression--primary-care-unspecied---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: current-depression--primary-care---primary/output
  postviral-depression--primary-care---primary:
    run: postviral-depression--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: depression--primary-care-unspecied---primary/output
  depression--primary-care-moder---primary:
    run: depression--primary-care-moder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: postviral-depression--primary-care---primary/output
  other-depression--primary-care---primary:
    run: other-depression--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: depression--primary-care-moder---primary/output
  chronic-depression--primary-care---primary:
    run: chronic-depression--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: other-depression--primary-care---primary/output
  depression-primary-care---primary:
    run: depression-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: chronic-depression--primary-care---primary/output
  depression--primary-care-psychosis---primary:
    run: depression--primary-care-psychosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: depression-primary-care---primary/output
  depression--primary-care-antidepre---primary:
    run: depression--primary-care-antidepre---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: depression--primary-care-psychosis---primary/output
  psychotic-depression--primary-care---primary:
    run: psychotic-depression--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: depression--primary-care-antidepre---primary/output
  xantenatal-depression--primary-care---primary:
    run: xantenatal-depression--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: psychotic-depression--primary-care---primary/output
  depression--primary-care-reaction---primary:
    run: depression--primary-care-reaction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: xantenatal-depression--primary-care---primary/output
  depression--primary-care-dysthymia---primary:
    run: depression--primary-care-dysthymia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: depression--primary-care-reaction---primary/output
  depression--primary-care-episode---primary:
    run: depression--primary-care-episode---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: depression--primary-care-dysthymia---primary/output
  depression--primary-care-agitated---primary:
    run: depression--primary-care-agitated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: depression--primary-care-episode---primary/output
  depression--primary-care-activ---primary:
    run: depression--primary-care-activ---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: depression--primary-care-agitated---primary/output
  depression--primary-care-future---primary:
    run: depression--primary-care-future---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: depression--primary-care-activ---primary/output
  depression---primary:
    run: depression---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: depression--primary-care-future---primary/output
  depression--primary-care-enjoy---primary:
    run: depression--primary-care-enjoy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: depression---primary/output
  depression--primary-care-depressed---primary:
    run: depression--primary-care-depressed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: depression--primary-care-enjoy---primary/output
  depression--primary-care-inter---primary:
    run: depression--primary-care-inter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: depression--primary-care-depressed---primary/output
  depression--primary-care-interim---primary:
    run: depression--primary-care-interim---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: depression--primary-care-inter---primary/output
  depression--primary-care-limbitrol---primary:
    run: depression--primary-care-limbitrol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: depression--primary-care-interim---primary/output
  depression--primary-care-225mg---primary:
    run: depression--primary-care-225mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: depression--primary-care-limbitrol---primary/output
  depression--primary-care-amitriptyl---primary:
    run: depression--primary-care-amitriptyl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: depression--primary-care-225mg---primary/output
  depression--primary-care-imipramine---primary:
    run: depression--primary-care-imipramine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: depression--primary-care-amitriptyl---primary/output
  depression--primary-care-300mg---primary:
    run: depression--primary-care-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: depression--primary-care-imipramine---primary/output
  depression--primary-care-pacitron---primary:
    run: depression--primary-care-pacitron---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: depression--primary-care-300mg---primary/output
  depression--primary-care-foraven---primary:
    run: depression--primary-care-foraven---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: depression--primary-care-pacitron---primary/output
  depression--primary-care-trixat---primary:
    run: depression--primary-care-trixat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: depression--primary-care-foraven---primary/output
  depression--primary-care-tabx28---primary:
    run: depression--primary-care-tabx28---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: depression--primary-care-trixat---primary/output
  depression--primary-care-nortriptyline---primary:
    run: depression--primary-care-nortriptyline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: depression--primary-care-tabx28---primary/output
  depression--primary-care-mirtazapine---primary:
    run: depression--primary-care-mirtazapine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: depression--primary-care-nortriptyline---primary/output
  depression--primary-care-citalopram---primary:
    run: depression--primary-care-citalopram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: depression--primary-care-mirtazapine---primary/output
  depression--primary-care-bolvidon---primary:
    run: depression--primary-care-bolvidon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: depression--primary-care-citalopram---primary/output
  depression--primary-care-optimax---primary:
    run: depression--primary-care-optimax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: depression--primary-care-bolvidon---primary/output
  depression--primary-care-duloxetine---primary:
    run: depression--primary-care-duloxetine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: depression--primary-care-optimax---primary/output
  depression--primary-care-prozit---primary:
    run: depression--primary-care-prozit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: depression--primary-care-duloxetine---primary/output
  depression--primary-care-tryptophan---primary:
    run: depression--primary-care-tryptophan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: depression--primary-care-prozit---primary/output
  depression--primary-care-trimipramine---primary:
    run: depression--primary-care-trimipramine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: depression--primary-care-tryptophan---primary/output
  depression--primary-care-sinequan---primary:
    run: depression--primary-care-sinequan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: depression--primary-care-trimipramine---primary/output
  depression--primary-care-reboxetine---primary:
    run: depression--primary-care-reboxetine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: depression--primary-care-sinequan---primary/output
  depression--primary-care-375mg---primary:
    run: depression--primary-care-375mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: depression--primary-care-reboxetine---primary/output
  depression--primary-care-triptafenm---primary:
    run: depression--primary-care-triptafenm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: depression--primary-care-375mg---primary/output
  depression--primary-care-desipramine---primary:
    run: depression--primary-care-desipramine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: depression--primary-care-triptafenm---primary/output
  depression--primary-care-asendi---primary:
    run: depression--primary-care-asendi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: depression--primary-care-desipramine---primary/output
  depression--primary-care-gamanil---primary:
    run: depression--primary-care-gamanil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: depression--primary-care-asendi---primary/output
  depression--primary-care-fluoxetine---primary:
    run: depression--primary-care-fluoxetine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: depression--primary-care-gamanil---primary/output
  depression--primary-care-allegron---primary:
    run: depression--primary-care-allegron---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: depression--primary-care-fluoxetine---primary/output
  depression--primary-care-tryptizol---primary:
    run: depression--primary-care-tryptizol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: depression--primary-care-allegron---primary/output
  depression--primary-care-cymbalta---primary:
    run: depression--primary-care-cymbalta---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: depression--primary-care-tryptizol---primary/output
  depression--primary-care-viepax---primary:
    run: depression--primary-care-viepax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: depression--primary-care-cymbalta---primary/output
  depression--primary-care-edronax---primary:
    run: depression--primary-care-edronax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: depression--primary-care-viepax---primary/output
  depression--primary-care-alventa---primary:
    run: depression--primary-care-alventa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: depression--primary-care-edronax---primary/output
  depression--primary-care-trazodone---primary:
    run: depression--primary-care-trazodone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: depression--primary-care-alventa---primary/output
  depression--primary-care-butriptyline---primary:
    run: depression--primary-care-butriptyline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: depression--primary-care-trazodone---primary/output
  depression--primary-care-dosulepin---primary:
    run: depression--primary-care-dosulepin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: depression--primary-care-butriptyline---primary/output
  depression--primary-care-vortioxetine---primary:
    run: depression--primary-care-vortioxetine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: depression--primary-care-dosulepin---primary/output
  depression--primary-care-500microgram---primary:
    run: depression--primary-care-500microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: depression--primary-care-vortioxetine---primary/output
  depression--primary-care-sinepin---primary:
    run: depression--primary-care-sinepin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: depression--primary-care-500microgram---primary/output
  depression--primary-care-500mg---primary:
    run: depression--primary-care-500mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: depression--primary-care-sinepin---primary/output
  depression--primary-care-lomont---primary:
    run: depression--primary-care-lomont---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: depression--primary-care-500mg---primary/output
  depression--primary-care-amoxapine---primary:
    run: depression--primary-care-amoxapine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: depression--primary-care-lomont---primary/output
  depression--primary-care-parnate---primary:
    run: depression--primary-care-parnate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: depression--primary-care-amoxapine---primary/output
  depression--primary-care-vensir---primary:
    run: depression--primary-care-vensir---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: depression--primary-care-parnate---primary/output
  depression--primary-care-marplan---primary:
    run: depression--primary-care-marplan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: depression--primary-care-vensir---primary/output
  lustral-depression--primary-care---primary:
    run: lustral-depression--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: depression--primary-care-marplan---primary/output
  depression--primary-care-aventyl---primary:
    run: depression--primary-care-aventyl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: lustral-depression--primary-care---primary/output
  depression--primary-care-200mg---primary:
    run: depression--primary-care-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: depression--primary-care-aventyl---primary/output
  depression--primary-care-viloxazine---primary:
    run: depression--primary-care-viloxazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: depression--primary-care-200mg---primary/output
  depression--primary-care-gastroresistant---primary:
    run: depression--primary-care-gastroresistant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: depression--primary-care-viloxazine---primary/output
  depression--primary-care-suspension---primary:
    run: depression--primary-care-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: depression--primary-care-gastroresistant---primary/output
  depression--primary-care-elavil---primary:
    run: depression--primary-care-elavil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: depression--primary-care-suspension---primary/output
  depression--primary-care-cipralex---primary:
    run: depression--primary-care-cipralex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: depression--primary-care-elavil---primary/output
  depression--primary-care-norval---primary:
    run: depression--primary-care-norval---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: depression--primary-care-cipralex---primary/output
  tonpular-depression--primary-care---primary:
    run: tonpular-depression--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: depression--primary-care-norval---primary/output
  depression--primary-care-seroxat---primary:
    run: depression--primary-care-seroxat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: tonpular-depression--primary-care---primary/output
  domical-depression--primary-care---primary:
    run: domical-depression--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: depression--primary-care-seroxat---primary/output
  venlalic-depression--primary-care---primary:
    run: venlalic-depression--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: domical-depression--primary-care---primary/output
  depression--primary-care-tifaxin---primary:
    run: depression--primary-care-tifaxin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: venlalic-depression--primary-care---primary/output
  depression--primary-care-prepadine---primary:
    run: depression--primary-care-prepadine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: depression--primary-care-tifaxin---primary/output
  depression--primary-care-surmontil---primary:
    run: depression--primary-care-surmontil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: depression--primary-care-prepadine---primary/output
  depression--primary-care-paxoran---primary:
    run: depression--primary-care-paxoran---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: depression--primary-care-surmontil---primary/output
  depression--primary-care-molipaxin---primary:
    run: depression--primary-care-molipaxin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: depression--primary-care-paxoran---primary/output
  iproniazid-depression--primary-care---primary:
    run: iproniazid-depression--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: depression--primary-care-molipaxin---primary/output
  depression--primary-care-treat---primary:
    run: depression--primary-care-treat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: iproniazid-depression--primary-care---primary/output
  depression--primary-care-dutonin---primary:
    run: depression--primary-care-dutonin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: depression--primary-care-treat---primary/output
  depression--primary-care-paroxetine---primary:
    run: depression--primary-care-paroxetine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: depression--primary-care-dutonin---primary/output
  depression--primary-care-flupentixol---primary:
    run: depression--primary-care-flupentixol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: depression--primary-care-paroxetine---primary/output
  depression--primary-care-inhibitor---primary:
    run: depression--primary-care-inhibitor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: depression--primary-care-flupentixol---primary/output
  depression--primary-care-brintellix---primary:
    run: depression--primary-care-brintellix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: depression--primary-care-inhibitor---primary/output
  depression--primary-care-venladex---primary:
    run: depression--primary-care-venladex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: depression--primary-care-brintellix---primary/output
  depression--primary-care-x56cp---primary:
    run: depression--primary-care-x56cp---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: depression--primary-care-venladex---primary/output
  marsilid-depression--primary-care---primary:
    run: marsilid-depression--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: depression--primary-care-x56cp---primary/output
  depression--primary-care-manerix---primary:
    run: depression--primary-care-manerix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: marsilid-depression--primary-care---primary/output
  depression--primary-care-sunveniz---primary:
    run: depression--primary-care-sunveniz---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: depression--primary-care-manerix---primary/output
  depression--primary-care-venlafaxine---primary:
    run: depression--primary-care-venlafaxine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: depression--primary-care-sunveniz---primary/output
  depression--primary-care-concordin---primary:
    run: depression--primary-care-concordin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: depression--primary-care-venlafaxine---primary/output
  depression--primary-care-depefex---primary:
    run: depression--primary-care-depefex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: depression--primary-care-concordin---primary/output
  depression--primary-care-ranflutin---primary:
    run: depression--primary-care-ranflutin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: depression--primary-care-depefex---primary/output
  depression--primary-care-olena---primary:
    run: depression--primary-care-olena---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: depression--primary-care-ranflutin---primary/output
  depression--primary-care-tranquax---primary:
    run: depression--primary-care-tranquax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: depression--primary-care-olena---primary/output
  depression--primary-care-phenelzine---primary:
    run: depression--primary-care-phenelzine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: depression--primary-care-tranquax---primary/output
  depression--primary-care-dothapax---primary:
    run: depression--primary-care-dothapax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: depression--primary-care-phenelzine---primary/output
  depression--primary-care-vivalan---primary:
    run: depression--primary-care-vivalan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: depression--primary-care-dothapax---primary/output
  depression--primary-care-venaxx---primary:
    run: depression--primary-care-venaxx---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: depression--primary-care-vivalan---primary/output
  depression--primary-care-cipramil---primary:
    run: depression--primary-care-cipramil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: depression--primary-care-venaxx---primary/output
  depression--primary-care-yentreve---primary:
    run: depression--primary-care-yentreve---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: depression--primary-care-cipramil---primary/output
  depression--primary-care-powder---primary:
    run: depression--primary-care-powder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule112
      potentialCases:
        id: potentialCases
        source: depression--primary-care-yentreve---primary/output
  depression--primary-care-iprindole---primary:
    run: depression--primary-care-iprindole---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule113
      potentialCases:
        id: potentialCases
        source: depression--primary-care-powder---primary/output
  depression--primary-care-moclobemide---primary:
    run: depression--primary-care-moclobemide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule114
      potentialCases:
        id: potentialCases
        source: depression--primary-care-iprindole---primary/output
  depression--primary-care-tofranil---primary:
    run: depression--primary-care-tofranil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule115
      potentialCases:
        id: potentialCases
        source: depression--primary-care-moclobemide---primary/output
  depression--primary-care-prozac---primary:
    run: depression--primary-care-prozac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule116
      potentialCases:
        id: potentialCases
        source: depression--primary-care-tofranil---primary/output
  depression--primary-care-feprapax---primary:
    run: depression--primary-care-feprapax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule117
      potentialCases:
        id: potentialCases
        source: depression--primary-care-prozac---primary/output
  depression--primary-care-tardcap---primary:
    run: depression--primary-care-tardcap---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule118
      potentialCases:
        id: potentialCases
        source: depression--primary-care-feprapax---primary/output
  depression--primary-care-efexor---primary:
    run: depression--primary-care-efexor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule119
      potentialCases:
        id: potentialCases
        source: depression--primary-care-tardcap---primary/output
  depression--primary-care-500mcg---primary:
    run: depression--primary-care-500mcg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule120
      potentialCases:
        id: potentialCases
        source: depression--primary-care-efexor---primary/output
  depression--primary-care-praminil---primary:
    run: depression--primary-care-praminil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule121
      potentialCases:
        id: potentialCases
        source: depression--primary-care-500mcg---primary/output
  depression--primary-care-pertofran---primary:
    run: depression--primary-care-pertofran---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule122
      potentialCases:
        id: potentialCases
        source: depression--primary-care-praminil---primary/output
  depression--primary-care-prothiaden---primary:
    run: depression--primary-care-prothiaden---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule123
      potentialCases:
        id: potentialCases
        source: depression--primary-care-pertofran---primary/output
  depression--primary-care-injection---primary:
    run: depression--primary-care-injection---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule124
      potentialCases:
        id: potentialCases
        source: depression--primary-care-prothiaden---primary/output
  depression--primary-care-doxepin---primary:
    run: depression--primary-care-doxepin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule125
      potentialCases:
        id: potentialCases
        source: depression--primary-care-injection---primary/output
  depression--primary-care-vexarin---primary:
    run: depression--primary-care-vexarin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule126
      potentialCases:
        id: potentialCases
        source: depression--primary-care-doxepin---primary/output
  depression--primary-care-nefazodone---primary:
    run: depression--primary-care-nefazodone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule127
      potentialCases:
        id: potentialCases
        source: depression--primary-care-vexarin---primary/output
  depression--primary-care-felicium---primary:
    run: depression--primary-care-felicium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule128
      potentialCases:
        id: potentialCases
        source: depression--primary-care-nefazodone---primary/output
  depression--primary-care-tranylcypromine---primary:
    run: depression--primary-care-tranylcypromine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule129
      potentialCases:
        id: potentialCases
        source: depression--primary-care-felicium---primary/output
  depression--primary-care-protriptyline---primary:
    run: depression--primary-care-protriptyline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule130
      potentialCases:
        id: potentialCases
        source: depression--primary-care-tranylcypromine---primary/output
  depression--primary-care-lofepramine---primary:
    run: depression--primary-care-lofepramine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule131
      potentialCases:
        id: potentialCases
        source: depression--primary-care-protriptyline---primary/output
  depression--primary-care-motival---primary:
    run: depression--primary-care-motival---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule132
      potentialCases:
        id: potentialCases
        source: depression--primary-care-lofepramine---primary/output
  depression--primary-care-capacity---primary:
    run: depression--primary-care-capacity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule133
      potentialCases:
        id: potentialCases
        source: depression--primary-care-motival---primary/output
  depression--primary-care-winfex---primary:
    run: depression--primary-care-winfex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule134
      potentialCases:
        id: potentialCases
        source: depression--primary-care-capacity---primary/output
  depression--primary-care-sertraline---primary:
    run: depression--primary-care-sertraline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule135
      potentialCases:
        id: potentialCases
        source: depression--primary-care-winfex---primary/output
  depression--primary-care-syrup---primary:
    run: depression--primary-care-syrup---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule136
      potentialCases:
        id: potentialCases
        source: depression--primary-care-sertraline---primary/output
  depression--primary-care-mianserin---primary:
    run: depression--primary-care-mianserin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule137
      potentialCases:
        id: potentialCases
        source: depression--primary-care-syrup---primary/output
  depression--primary-care-vaxalin---primary:
    run: depression--primary-care-vaxalin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule138
      potentialCases:
        id: potentialCases
        source: depression--primary-care-mianserin---primary/output
  depression--primary-care-faverin---primary:
    run: depression--primary-care-faverin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule139
      potentialCases:
        id: potentialCases
        source: depression--primary-care-vaxalin---primary/output
  depression--primary-care-bonilux---primary:
    run: depression--primary-care-bonilux---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule140
      potentialCases:
        id: potentialCases
        source: depression--primary-care-faverin---primary/output
  depression--primary-care-x84cp---primary:
    run: depression--primary-care-x84cp---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule141
      potentialCases:
        id: potentialCases
        source: depression--primary-care-bonilux---primary/output
  depression--primary-care-anafranil---primary:
    run: depression--primary-care-anafranil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule142
      potentialCases:
        id: potentialCases
        source: depression--primary-care-x84cp---primary/output
  depression--primary-care-ranfaxine---primary:
    run: depression--primary-care-ranfaxine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule143
      potentialCases:
        id: potentialCases
        source: depression--primary-care-anafranil---primary/output
  depression--primary-care-thaden---primary:
    run: depression--primary-care-thaden---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule144
      potentialCases:
        id: potentialCases
        source: depression--primary-care-ranfaxine---primary/output
  depression--primary-care-ludiomil---primary:
    run: depression--primary-care-ludiomil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule145
      potentialCases:
        id: potentialCases
        source: depression--primary-care-thaden---primary/output
  depression--primary-care-agomelatine---primary:
    run: depression--primary-care-agomelatine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule146
      potentialCases:
        id: potentialCases
        source: depression--primary-care-ludiomil---primary/output
  depression--primary-care-rodomel---primary:
    run: depression--primary-care-rodomel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule147
      potentialCases:
        id: potentialCases
        source: depression--primary-care-agomelatine---primary/output
  depression--primary-care-evadyne---primary:
    run: depression--primary-care-evadyne---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule148
      potentialCases:
        id: potentialCases
        source: depression--primary-care-rodomel---primary/output
  depression--primary-care-fluanxol---primary:
    run: depression--primary-care-fluanxol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule149
      potentialCases:
        id: potentialCases
        source: depression--primary-care-evadyne---primary/output
  depression--primary-care-oxactin---primary:
    run: depression--primary-care-oxactin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule150
      potentialCases:
        id: potentialCases
        source: depression--primary-care-fluanxol---primary/output
  depression--primary-care-parstelin---primary:
    run: depression--primary-care-parstelin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule151
      potentialCases:
        id: potentialCases
        source: depression--primary-care-oxactin---primary/output
  depression--primary-care-motipress---primary:
    run: depression--primary-care-motipress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule152
      potentialCases:
        id: potentialCases
        source: depression--primary-care-parstelin---primary/output
  tricyclic-depression--primary-care---primary:
    run: tricyclic-depression--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule153
      potentialCases:
        id: potentialCases
        source: depression--primary-care-motipress---primary/output
  depression--primary-care-maleate---primary:
    run: depression--primary-care-maleate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule154
      potentialCases:
        id: potentialCases
        source: tricyclic-depression--primary-care---primary/output
  isocarboxazid-depression--primary-care---primary:
    run: isocarboxazid-depression--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule155
      potentialCases:
        id: potentialCases
        source: depression--primary-care-maleate---primary/output
  depression--primary-care-maprotiline---primary:
    run: depression--primary-care-maprotiline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule156
      potentialCases:
        id: potentialCases
        source: isocarboxazid-depression--primary-care---primary/output
  depression--primary-care-lentizol---primary:
    run: depression--primary-care-lentizol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule157
      potentialCases:
        id: potentialCases
        source: depression--primary-care-maprotiline---primary/output
  depression--primary-care-nardil---primary:
    run: depression--primary-care-nardil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule158
      potentialCases:
        id: potentialCases
        source: depression--primary-care-lentizol---primary/output
  depression--primary-care-valdoxan---primary:
    run: depression--primary-care-valdoxan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule159
      potentialCases:
        id: potentialCases
        source: depression--primary-care-nardil---primary/output
  depression--primary-care-prozep---primary:
    run: depression--primary-care-prozep---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule160
      potentialCases:
        id: potentialCases
        source: depression--primary-care-valdoxan---primary/output
  depression--primary-care-prondol---primary:
    run: depression--primary-care-prondol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule161
      potentialCases:
        id: potentialCases
        source: depression--primary-care-prozep---primary/output
  depression--primary-care-medication---primary:
    run: depression--primary-care-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule162
      potentialCases:
        id: potentialCases
        source: depression--primary-care-prondol---primary/output
  annual-depression--primary-care---primary:
    run: annual-depression--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule163
      potentialCases:
        id: potentialCases
        source: depression--primary-care-medication---primary/output
  depression--primary-care-register---primary:
    run: depression--primary-care-register---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule164
      potentialCases:
        id: potentialCases
        source: annual-depression--primary-care---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule165
      potentialCases:
        id: potentialCases
        source: depression--primary-care-register---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
  inputModule111:
    id: inputModule111
    doc: Python implementation unit
    type: File
  inputModule112:
    id: inputModule112
    doc: Python implementation unit
    type: File
  inputModule113:
    id: inputModule113
    doc: Python implementation unit
    type: File
  inputModule114:
    id: inputModule114
    doc: Python implementation unit
    type: File
  inputModule115:
    id: inputModule115
    doc: Python implementation unit
    type: File
  inputModule116:
    id: inputModule116
    doc: Python implementation unit
    type: File
  inputModule117:
    id: inputModule117
    doc: Python implementation unit
    type: File
  inputModule118:
    id: inputModule118
    doc: Python implementation unit
    type: File
  inputModule119:
    id: inputModule119
    doc: Python implementation unit
    type: File
  inputModule120:
    id: inputModule120
    doc: Python implementation unit
    type: File
  inputModule121:
    id: inputModule121
    doc: Python implementation unit
    type: File
  inputModule122:
    id: inputModule122
    doc: Python implementation unit
    type: File
  inputModule123:
    id: inputModule123
    doc: Python implementation unit
    type: File
  inputModule124:
    id: inputModule124
    doc: Python implementation unit
    type: File
  inputModule125:
    id: inputModule125
    doc: Python implementation unit
    type: File
  inputModule126:
    id: inputModule126
    doc: Python implementation unit
    type: File
  inputModule127:
    id: inputModule127
    doc: Python implementation unit
    type: File
  inputModule128:
    id: inputModule128
    doc: Python implementation unit
    type: File
  inputModule129:
    id: inputModule129
    doc: Python implementation unit
    type: File
  inputModule130:
    id: inputModule130
    doc: Python implementation unit
    type: File
  inputModule131:
    id: inputModule131
    doc: Python implementation unit
    type: File
  inputModule132:
    id: inputModule132
    doc: Python implementation unit
    type: File
  inputModule133:
    id: inputModule133
    doc: Python implementation unit
    type: File
  inputModule134:
    id: inputModule134
    doc: Python implementation unit
    type: File
  inputModule135:
    id: inputModule135
    doc: Python implementation unit
    type: File
  inputModule136:
    id: inputModule136
    doc: Python implementation unit
    type: File
  inputModule137:
    id: inputModule137
    doc: Python implementation unit
    type: File
  inputModule138:
    id: inputModule138
    doc: Python implementation unit
    type: File
  inputModule139:
    id: inputModule139
    doc: Python implementation unit
    type: File
  inputModule140:
    id: inputModule140
    doc: Python implementation unit
    type: File
  inputModule141:
    id: inputModule141
    doc: Python implementation unit
    type: File
  inputModule142:
    id: inputModule142
    doc: Python implementation unit
    type: File
  inputModule143:
    id: inputModule143
    doc: Python implementation unit
    type: File
  inputModule144:
    id: inputModule144
    doc: Python implementation unit
    type: File
  inputModule145:
    id: inputModule145
    doc: Python implementation unit
    type: File
  inputModule146:
    id: inputModule146
    doc: Python implementation unit
    type: File
  inputModule147:
    id: inputModule147
    doc: Python implementation unit
    type: File
  inputModule148:
    id: inputModule148
    doc: Python implementation unit
    type: File
  inputModule149:
    id: inputModule149
    doc: Python implementation unit
    type: File
  inputModule150:
    id: inputModule150
    doc: Python implementation unit
    type: File
  inputModule151:
    id: inputModule151
    doc: Python implementation unit
    type: File
  inputModule152:
    id: inputModule152
    doc: Python implementation unit
    type: File
  inputModule153:
    id: inputModule153
    doc: Python implementation unit
    type: File
  inputModule154:
    id: inputModule154
    doc: Python implementation unit
    type: File
  inputModule155:
    id: inputModule155
    doc: Python implementation unit
    type: File
  inputModule156:
    id: inputModule156
    doc: Python implementation unit
    type: File
  inputModule157:
    id: inputModule157
    doc: Python implementation unit
    type: File
  inputModule158:
    id: inputModule158
    doc: Python implementation unit
    type: File
  inputModule159:
    id: inputModule159
    doc: Python implementation unit
    type: File
  inputModule160:
    id: inputModule160
    doc: Python implementation unit
    type: File
  inputModule161:
    id: inputModule161
    doc: Python implementation unit
    type: File
  inputModule162:
    id: inputModule162
    doc: Python implementation unit
    type: File
  inputModule163:
    id: inputModule163
    doc: Python implementation unit
    type: File
  inputModule164:
    id: inputModule164
    doc: Python implementation unit
    type: File
  inputModule165:
    id: inputModule165
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
