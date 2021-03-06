[
{
    gid: "ND-CAP-01",
    label: "nd-lar-must-classify-interactions-and-measure-outgoing-particles-with-performance-comparable-to-or-exceeding-fd",
    name: "ND-LAr must classify interactions and measure outgoing particles with performance comparable to or exceeding FD",
    description: "In order to effectively translate measurements to the FD, ND-LAr must be able to reconstruct particles from neutrino events with comparable/better performance than the FD",
    specification: "None",
    goal: "",
    rationale: "None",
    validation: "Simulation",
},
{
    gid: "ND-CAP-02",
    label: "nd-lar-nue-identification",
    name: "ND-LAr nue identification",
    description: "ND-LAr must identify and reconstruct nue events as well as FD",
    specification: ">90% efficiency, background< 3%, Enu resolution <10-15%",
    goal: "",
    rationale: "ND-LAr nue identification and reconstruction is needed to verify the modelling of the nue flux and cross section, as well as the respone of the FD",
    validation: "Simulation",
},
{
    gid: "ND-CAP-03",
    label: "nd-lar-numu-identification",
    name: "ND-LAr numu identification",
    description: "ND-LAr must identify and reconstruct numu events as well as FD",
    specification: ">95% efficiency, background<3%, Enu resolution < 17%",
    goal: "",
    rationale: "ND-LAr numu identification and reconstruction is needed to verify the modelling of the numu flux and cross section, as well as the respone of the FD",
    validation: "Simulation",
},
{
    gid: "ND-CAP-04",
    label: "nd-lar-contained-particle-reconstruction",
    name: "ND-LAr contained particle reconstruction",
    description: "Contained particles emerging from ND-LAr should be detected as well as FD.",
    specification: ">90% eff. for e/γ>20 MeV/c, μ/π>100 MeV/c, p>500 MeV/c",
    goal: "",
    rationale: "ND-LAr particle reconstruction is needed to verify and correct modeling to the extent the the FD observes the corresponding particles.",
    validation: "Simulation",
},
{
    gid: "ND-CAP-05",
    label: "fraction-of-phase-space-in-eν,-y-where-the-hadronic-recoil-is-not-contained-in-nd-lar",
    name: "Fraction of phase space in Eν, y where the hadronic recoil is not contained in ND-LAR",
    description: "Event topologies/kinematics where no geometric configuratoin would contain the hadron shower must be limited.",
    specification: "<1% uncovered phase space",
    goal: "",
    rationale: "Uncovered phase space is effectively completely unconstrained by ND-LAr measurements and thus will have a large uncertainty in their contribution to FD distributions. ",
    validation: "Simulation",
},
{
    gid: "ND-CAP-06",
    label: "fiducial-mass/statistics",
    name: "Fiducial mass/statistics",
    description: "ND-LAr must collect sufficient statistics to allow <2% statistical uncertainty in the nu-e measurement",
    specification: "2500 events/year",
    goal: "",
    rationale: "In order to make a precise measurement, high statistics in this low-cross section process is needed",
    validation: "Simulation",
},
{
    gid: "ND-CAP-07",
    label: "nu-e-identification-needs-new-name",
    name: "nu-e identification needs new name",
    description: "ND-LAr must be able to identify the recoil electron, distinguish it from other particles (μ,γ, π0), and also from nue-CC",
    specification: ">90% efficiency, Full rejection of νμ-CC, 90% rejection of γ, 50 MeV γ threshold",
    goal: "",
    rationale: "In oder to make a precise measurement, an efficient and pure selection is needed ",
    validation: "Simulation",
},
{
    gid: "ND-CAP-08",
    label: "electron-energy-resolution",
    name: "Electron energy resolution",
    description: "Energy resolution is needed to identify the forward nu-e events and measure its kinematics",
    specification: "0.05",
    goal: "",
    rationale: "Both the electron energy and angle are needed in separating this process from the background",
    validation: "Simulation",
},
{
    gid: "ND-CAP-09",
    label: "electron-angular-resolution",
    name: "Electron angular resolution",
    description: "A tight cut on forward electrons is needed to identify nu-e events",
    specification: "core < 5 mrad, tail < 12 mrad",
    goal: "",
    rationale: "Both the electron energy and angle are needed in separating this process from the background",
    validation: "Simulation",
},
{
    gid: "ND-CAP-10",
    label: "vertex-activity-threshold",
    name: "Vertex activity threshold",
    description: "Identifying vertex activity near the electron vertex is necessary to reject backgrounds",
    specification: "<20 MeV",
    goal: "",
    rationale: "nue-CC and other backgrounds give rise to hadronic activity near the vertex that is not present for nu-e elastic events",
    validation: "Simulation",
},
{
    gid: "ND-CAP-11",
    label: "timing-resolution-for-scintillation-detection",
    name: "Timing resolution for scintillation detection",
    description: "Scintillation timing is required to set the t0 for the charge readout and to separate event pileup",
    specification: "<20 ns",
    goal: "",
    rationale: "The charge readout of ND-LAr occurs on the time scale of ms and does not provide an absolute reference (t0). This is too long to isolate activity from the beam and  obscures the (absolute) coordinate along the drift axis.  The optical detection of scintillation photons must provide both t0 and isolation of the activity from O(100) events spread within the beam delivery window of ~10 μsec. ",
    validation: "None",
},
{
    gid: "ND-CAP-12",
    label: "intermodule-timing-synchronization-of-scintillation-detection.",
    name: "Intermodule timing synchronization of scintillation detection.",
    description: "Timing between modules must be synchronized in order to seamlessly integrate activity observed in the separate modules.",
    specification: "<20 ns",
    goal: "",
    rationale: "Time  synchronization betweem modules must be comparable to the scintillation timing resolution in order to ensure that event reconstruction across modules is not compromised.",
    validation: "None",
},
{
    gid: "ND-CAP-13",
    label: "acceptance-for-muons-exiting-nd-lar",
    name: "Acceptance for muons exiting ND-LAr",
    description: "TMS/ND-GAr must detect and analyzes muons exiting the ND-LAr without a gap in phase space coverage",
    specification: " >1 GeV μ± from ND-LAr FV emitted up to 30°  from neutrino direction",
    goal: "",
    rationale: "This completes ND-C1.2 and complements ND-C1.3 by providing the corresponding muon acceptance at higher momentum.",
    validation: "Simulation",
},
{
    gid: "ND-CAP-14",
    label: "momentum-resolution-for-muons-exiting-nd-lar",
    name: "Momentum resolution for muons exiting ND-LAr",
    description: "TMS/ND-GAr must measure the muon momentum at least as accurately as the FD",
    specification: "core < 4%, RMS<10%",
    goal: "",
    rationale: "This completes ND-C1.2 by providing the corresponding muon kinematic reconstruction",
    validation: "Simulation",
},
{
    gid: "ND-CAP-15",
    label: "timing-resolution-for-muons-exiting-nd-lar",
    name: "Timing resolution for muons exiting ND-LAr",
    description: "TMS/ND-GAr must determine the timing of muon tracks in order to separate activity from a single track from other activity in the detector ",
    specification: "WIP",
    goal: "",
    rationale: "The current design of the TMS relies on 2D projective light readout to reduce cost and complexity.  The time resolution for the scintillator trackers must be sufficient to resolve projective ambiguities for a majority of muon signals but will depend on the details of the TMS design.",
    validation: "None",
},
{
    gid: "ND-CAP-16",
    label: "time-synchronization-with-nd-lar",
    name: "Time synchronization with ND-LAr",
    description: "TMS/ND-GAr must be synchronized with ND-LAr in order to match activity in ND-LAr with the muon track observed in the TMS/ND-GAr.",
    specification: "<20 ns",
    goal: "",
    rationale: "The timing synchrnonization should be such that the timing resolution within the separate systems are not compromised in matching activity across the detectors.",
    validation: "None",
},
{
    gid: "ND-CAP-17",
    label: "sign-select/momentum-analyze-e±,-μ±-across-range-of-interest",
    name: "Sign select/momentum analyze e±, μ± across range of interest",
    description: "Precise lepton momentum/sign reconstruction is needed for detailed kinematic studies, beam νe, and wrong sign measurements",
    specification: "Applies to mu± exiting ND-LAr per ND-C2.1 (initial); Extends to [0.1, 10] GeV e±, μ± in ND-GAr (nominal)",
    goal: "",
    rationale: "Precise lepton momentum/sign reconstruction is needed for detailed kinematic studies, beam νe, and wrong sign measurements",
    validation: "Simulation",
},
{
    gid: "ND-CAP-18",
    label: "detect,-identify,-measure-momentum-of-protons-emitted-from-ν-ar-interactions",
    name: "Detect, identify, measure momentum of protons emitted from ν-Ar interactions",
    description: "Low energy proton reconstruction is needed to verify FSI models and LAr response modelling",
    specification: "KE >10 (5) MeV (nominal)",
    goal: "",
    rationale: "Low threshold proton detection is needed to distinguish between FSI models. Identification of protons is necesary to techniques such as transverse kinematic balance or low-nu. ",
    validation: "Simulation",
},
{
    gid: "ND-CAP-19",
    label: "detect,-identify,-sign-select,-measure-the-momentum-of-π±-emitted-from-ν-ar-interactions",
    name: "Detect, identify, sign-select, measure the momentum of π± emitted from ν-Ar interactions",
    description: "Low energy proton reconstruction is needed to verify FSI models and LAr response modelling",
    specification: "KE > 20 (5 MeV) (nominal)",
    goal: "",
    rationale: "Inefficiency or misidentification of the charged pions can result in biases in neutrino energy reconstruction. To understand this in the context of the LArTPC requires a measurement of the pion spectrum/multiplicity with lower thresholds, sign selection, and minimal secondary interactions that significantly impact the reconstruction of pions in LArTPCs.",
    validation: "Simulation",
},
{
    gid: "ND-CAP-20",
    label: "charged-track-momentum-resolution",
    name: "Charged track momentum resolution",
    description: "Precise momentum resolution of charged recoil particles is needed to study the impact of ND-LAr threshold and measure spectra",
    specification: "WIP (nominal)",
    goal: "",
    rationale: "Precise tracking reconstruction is needed to calculate kinematic variables for verifiying and correcting neutrino interaction models",
    validation: "Simulation",
},
{
    gid: "ND-CAP-21",
    label: "charged-particle-identification",
    name: "Charged particle identification",
    description: "Recoil particles mut be identified to categorize interactions, tag flavor, and verify modelling of interaction model and ND-LAr response",
    specification: "WIP (nominal)",
    goal: "",
    rationale: "Charged particle identification is needed to correctly classify the event in toplogical categories so that model predictons can be verfieid/corrected.",
    validation: "Simulation",
},
{
    gid: "ND-CAP-22",
    label: "detect-and-measure-π0’s-with-the-photons-from-their-decay",
    name: "Detect and measure π0’s with the photons from their decay",
    description: "π0’s must be identified/reconstructed to reconstruct the event and have a complete view of pion emission from ν-Ar interactions",
    specification: "WIP (nominal)",
    goal: "",
    rationale: "Identification of neutral pions through their decay to two photons is necesary to complete the kinematic reconstruction neutrino interactions to use techniques such as transverse kinematic balance or low-nu",
    validation: "Simulation",
},
{
    gid: "ND-CAP-23",
    label: "absolute-time-measurement-for-tracks",
    name: "Absolute time measurement for tracks",
    description: "Precise timing is required to provide an absolute reference for the charge signal in the HPgTPC of ND-Gar",
    specification: "WIP (nominal)",
    goal: "",
    rationale: "Timing in the ECAL is required to provide an absolute time reference for charge activity observed in the HPgTPC in order to determine the position along the drift axis. There should be both a resolution and efficiency requirement. ",
    validation: "Simulation",
},
{
    gid: "ND-CAP-24",
    label: "take-measurements-with-off-axis-fluxes-with-spectra-spanning-the-region-of-interest",
    name: "Take measurements with off-axis fluxes with spectra spanning the region of interest",
    description: "The system should move sufficiently far off-axis to obtain fluxes at the lower range of ND-M7.",
    specification: "at least 30.5 m off-axis",
    goal: "",
    rationale: "The range of off-axis travel is directly related to the range of spectrum variation. The spectrum variation should be sufficient to cover the range of interest as specified in ND-M7",
    validation: "None",
},
{
    gid: "ND-CAP-25",
    label: "maintain-uniform-detector-performance-across-full-range-of-movements",
    name: "Maintain uniform detector performance across full range of movements",
    description: "Uniform performance is needed to make comparative measurements across data taken at different locations",
    specification: "1% in relevant metrics",
    goal: "",
    rationale: "It is essential that the detectors perform uniformly so that the detected interactions are consistently reconstructed with negligible deviation in detector performance. In addition to any potential effects on the detector components from the motion itself, alignment between the detector elements must be maintained. ",
    validation: "None",
},
{
    gid: "ND-CAP-26",
    label: "place-detector-with-sufficient-granularity-and-accuracy",
    name: "Place detector with sufficient granularity and accuracy",
    description: "Uniform performance is needed to make comparative measurements across data taken at different locations",
    specification: "Granularity: width of ND-LAr module, Accuracy: < 10 cm (initial); Granularity: < 10 cm, Accuracy: < 1 cm (nominal)",
    goal: "",
    rationale: "In supporting ND-C4.2, it is important that the targeted off-axis position can be placed at the center of the detector so that the fiducial volume can likewise be centered. Precise positioning of the detectors relative to the on-axis location is necessary to accruately determine the flux that is incident on the detector. Furthermore, detector acceptance/performance  varies on the length scale of the ND-LAr module width. Positioning accuracy  and granularity should be much better than this length scale. Similar requirements hold for the TMS/ND-GAr placement",
    validation: "None",
},
{
    gid: "ND-CAP-27",
    label: "minimize-down-time-for-motion",
    name: "Minimize down time for motion",
    description: "The ramp down, movement, and ramp up cycle must not cause significant down time, including from farthest off-axis to on-axis.",
    specification: "< 8 hours",
    goal: "",
    rationale: "Assuming that components of the detector must be ramped down and data-taking stopped during movement, the net down time associated with both the stoppage of data-taking and the movement to a new location must be minimized. The system should further more have the ability to return in the same timeframe to on-axis data-taking to allow regular stability checks. In the worst case, this means moving from the furthest off-axis location to the on-axis location in this time frame, accounting for ramp down/up of the detectors.",
    validation: "None",
},
{
    gid: "ND-CAP-28",
    label: "regular-suite-of-measurements",
    name: "Regular suite of measurements",
    description: "Due to potential variations in the beam line, particulary after regular annual mainetnance periods, the ability to perform measurements each year is needed.",
    specification: "<1 year",
    goal: "",
    rationale: "Due to beamline variations that may be expected, the movement system should allow a complete set of off-axis measurements in the course of an annual run. Summer maintenance periods often result in component replacement which may change the neutrino flux, requiring a new cycle of measurements",
    validation: "None",
},
{
    gid: "ND-CAP-29",
    label: "statistics-of-identified-νμ-cc-events",
    name: "Statistics of identified νμ-CC events",
    description: "SAND must collect and identify enough νμ CC interactions to perform beam monitoring on a weekly basis",
    specification: "For pμ: >20 tons, For Eν: > 5 tons",
    goal: "",
    rationale: "High statistics, particularly for the spectral analysis, are needed to quickly detect enough numu-CC events. Some capacity to reconstruct the neutrino energy improves the sensitivity, requiring less statistics.",
    validation: "None",
},
{
    gid: "ND-CAP-30",
    label: "pμ/eν-resolution",
    name: "pμ/Eν resolution",
    description: "SAND must sufficient muon moment or neutrino energy resolution to detect spectral variations in νμ CC events from a representative set of variations in a week",
    specification: "<1 GeV for either",
    goal: "",
    rationale: "Simulation of representative beam variations give rise to changes that are on the scale of ~1 GeV, which sets the scale of the necessary resolution. The ability to reconstruct neutrino energy with this resolution in addition to the muon improves the sensitivity to potential beam variations; this requires the ability to reconstruct the energy of the hadron system.",
    validation: "Simulation",
},
{
    gid: "ND-CAP-31",
    label: "vertex-resolution",
    name: "Vertex resolution",
    description: "SAND must have the ability to vertex neutrino interactions into upper/lower, left/right regions relative to the nominal beam center",
    specification: "<~50 cm",
    goal: "",
    rationale: "Some variations result in misdirection of the beam, which can be more readily detected by analyzing the position dependence of the spectrum. Sufficient vertex resolution is needed to separate interactions occuring in each quadrant of the detector transverse to the beam.",
    validation: "Simulation",
},
{
    gid: "ND-CAP-32",
    label: "track-timing",
    name: "Track timing",
    description: "SAND must have timing to identify and separate activity occuring within the neutrino beam delivery window, at different times within a single beam spill, and reject beam-induced external activity.",
    specification: "<20 ns for tracker,  <400 ps on hits in the ECAL",
    goal: "",
    rationale: "SAND must be able to reject non-beam related activities such as cosmic rays . Due to its proximity to the magnet, which will induce a large number of beam-related backgrounds, the ECAL must have sufficient timing resolution to separate incoming tracks from outgoing ones as they are sampled over the 18 cm pathlength.",
    validation: "None",
},
]