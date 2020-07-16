-- docker exec -it postgres psql -U postgres

CREATE ROLE admin WITH LOGIN PASSWORD 'institute_of_cancer_research';

CREATE DATABASE genes WITH OWNER admin;

\c genes admin;

DROP TABLE genes;
CREATE TABLE genes (
    id TEXT PRIMARY KEY,
    family TEXT,
    num_structures integer,
    num_compounds integer,
    description TEXT,
    full_name TEXT,
    short_name TEXT,
    image Text,
    publications int[][]
);
CREATE TABLE features (
    id TEXT NOT NULL,
    is_druggable BOOLEAN,
    is_enzyme BOOLEAN,
    FOREIGN KEY (id) REFERENCES genes (id)
);

INSERT into genes values
    (
        'P17948',
        'Tyr protein kinase family',
        12,
        3337,
        'Also known as VGFR1_HUMAN,FLT1,FLT,FRT,VEGFR1. Tyrosine-protein kinase that acts as a cell-surface receptor for VEGFA,VEGFB and PGF,and plays an essential role in the development of embryonic vasculature,the regulation of angiogenesis,cell survival,cell migration,macrophage function,chemotaxis,and cancer cell invasion. May play an essential role as a negative regulator of embryonic angiogenesis by inhibiting excessive proliferation of endothelial cells. Can promote endothelial cell proliferation,survival and angiogenesis in adulthood. Its function in promoting cell proliferation seems to be cell-type specific. Promotes PGF-mediated proliferation of endothelial cells,proliferation of some types of cancer cells,but does not promote proliferation of normal fibroblasts (in vitro). Has very high affinity for VEGFA and relatively low protein kinase activity; may function as a negative regulator of VEGFA signaling by limiting the amount of free VEGFA and preventing its binding to KDR. Likewise,isoforms lacking a transmembrane domain,such as isoform 2,isoform 3 and isoform 4,may function as decoy receptors for VEGFA. Modulates KDR signaling by forming heterodimers with KDR. Ligand binding leads to the activation of several signaling cascades. Activation of PLCG leads to the production of the cellular signaling molecules diacylglycerol and inositol 1,4,5-trisphosphate and the activation of protein kinase C. Mediates phosphorylation of PIK3R1,the regulatory subunit of phosphatidylinositol 3-kinase,leading to activation of phosphatidylinositol kinase and the downstream signaling pathway. Mediates activation of MAPK1/ERK2,MAPK3/ERK1 and the MAP kinase signaling pathway,as well as of the AKT1 signaling pathway. Phosphorylates SRC and YES1,and may also phosphorylate CBL. Isoform 1 phosphorylates PLCG. Promotes phosphorylation of AKT1 at ''Ser-473''. Promotes phosphorylation of PTK2/FAK1. Isoform 7 has a truncated kinase domain; it increases phosphorylation of SRC at ''Tyr-418'' by unknown means and promotes tumor cell invasion. Interacts with VEGFA,VEGFB and PGF. Monomer in the absence of bound VEGFA,VEGFB or PGF. Homodimer in the presence of bound VEGFA,VEGFB and PGF. Can also form a heterodimer with KDR. Interacts (when tyrosine phosphorylated) with CBL,CRK,GRB2,NCK1,PIK3R1,PLCG,PSEN1 and PTPN11. Probably interacts also with PTPRB. Interacts with RACK1. Identified in a complex with CBL and CD2AP.',
        'Vascular endothelial growth factor receptor 1',
        'FLT1',
        'https://cdn.rcsb.org/images/rutgers/fl/1flt/1flt.pdb-250.jpg',
        '{{2004,1},{2008,1},{2009,3},{2010,2},{2011,1},{2012,2},{2013,65},{2014,61},{2015,56},{2016,71},{2017,5}}'
    ),
    (
        'P00533',
        'Tyr protein kinase family',
        185,
        11597,
        'Also known as EGFR_HUMAN,EGFR,ERBB,ERBB1,HER1. Receptor tyrosine kinase binding ligands of the EGF family and activating several signaling cascades to convert extracellular cues into appropriate cellular responses (PubMed:2790960,PubMed:10805725,PubMed:27153536). Known ligands include EGF,TGFA/TGF-alpha,AREG,epigen/EPGN,BTC/betacellulin,epiregulin/EREG and HBEGF/heparin-binding EGF (PubMed:2790960,PubMed:7679104,PubMed:8144591,PubMed:9419975,PubMed:15611079,PubMed:12297049,PubMed:27153536,PubMed:20837704). Ligand binding triggers receptor homo- and/or heterodimerization and autophosphorylation on key cytoplasmic residues. The phosphorylated receptor recruits adapter proteins like GRB2 which in turn activates complex downstream signaling cascades. Activates at least 4 major downstream signaling cascades including the RAS-RAF-MEK-ERK,PI3 kinase-AKT,PLCgamma-PKC and STATs modules (PubMed:27153536). May also activate the NF-kappa-B signaling cascade (PubMed:11116146). Also directly phosphorylates other proteins like RGS16,activating its GTPase activity and probably coupling the EGF receptor signaling to the G protein-coupled receptor signaling (PubMed:11602604). Also phosphorylates MUC1 and increases its interaction with SRC and CTNNB1/beta-catenin (PubMed:11483589). Plays a role in enhancing learning and memory performance.,Isoform 2 may act as an antagonist of EGF action.,(Microbial infection) Acts as a receptor for hepatitis C virus (HCV) in hepatocytes and facilitates its cell entry. Mediates HCV entry by promoting the formation of the CD81-CLDN1 receptor complexes that are essential for HCV entry and by enhancing membrane fusion of cells expressing HCV envelope glycoproteins. Binding of the ligand triggers homo- and/or heterodimerization of the receptor triggering its autophosphorylation. Heterodimer with ERBB2 (PubMed:10805725). Interacts with ERRFI1; inhibits dimerization of the kinase domain and autophosphorylation (PubMed:18046415). Part of a complex with ERBB2 and either PIK3C2A or PIK3C2B (PubMed:10805725). Interacts with GRB2; an adapter protein coupling the receptor to downstream signaling pathways. Interacts with GAB2; involved in signaling downstream of EGFR. Interacts with STAT3; mediates EGFR downstream signaling in cell proliferation. Interacts with RIPK1; involved in NF-kappa-B activation. Interacts (autophosphorylated) with CBL,CBLB and CBLC; involved in EGFR ubiquitination and regulation. Interacts with SOCS5; regulates EGFR degradation through ELOC- and ELOB-mediated ubiquitination and proteasomal degradation. Interacts with PRMT5; methylates EGFR and enhances interaction with PTPN6. Interacts (phosphorylated) with PTPN6; inhibits EGFR-dependent activation of MAPK/ERK. Interacts with COPG1; essential for regulation of EGF-dependent nuclear transport of EGFR by retrograde trafficking from the Golgi to the ER. Interacts with TNK2; this interaction is dependent on EGF stimulation and kinase activity of EGFR. Interacts with PCNA; positively regulates PCNA (PubMed:17115032). Interacts with PELP1. Interacts with MUC1. Interacts with AP2M1. Interacts with FER. May interact with EPS8; mediates EPS8 phosphorylation. Interacts (via SH2 domains) with GRB2,NCK1 and NCK2 (PubMed:10026169). Interacts with ATX2. Interacts with GAREM1. Interacts (ubiquitinated) with ANKRD13A/B/D; the interaction is direct and may regulate EGFR internalization after EGF stimulation. Interacts with GPER1; the interaction occurs in an estrogen-dependent manner. Interacts (via C-terminal cytoplasmic kinase domain) with ZPR1 (via zinc fingers). Interacts with RNF115 and RNF126 (PubMed:23418353). Interacts with GPRC5A (via its transmembrane domain) (PubMed:25311788). Interacts with FAM83B; positively regulates EGFR inducing its autophosphorylation in absence of stimulation by EGF (PubMed:23912460). Interacts with LAPTM4B; positively correlates with EGFR activation (PubMed:28479384). Interacts with STX19 (PubMed:16420529). Interacts with CD44 (PubMed:23589287).',
        'Epidermal growth factor receptor',
        'EGFR',
        'https://cdn.rcsb.org/images/rutgers/dn/1dnq/1dnq.pdb-250.jpg',
        '{{2004,1},{2008,1},{2009,3},{2010,2},{2011,1},{2012,2},{2013,65},{2014,61},{2015,56},{2016,71},{2017,5}}'
  ),
    (
        'P04049',
        'TKL Ser/Thr protein kinase family',
        19,
        2515,
        'Also known as RAF1_HUMAN,RAF1,RAF. Serine/threonine-protein kinase that acts as a regulatory link between the membrane-associated Ras GTPases and the MAPK/ERK cascade,and this critical regulatory link functions as a switch determining cell fate decisions including proliferation,differentiation,apoptosis,survival and oncogenic transformation. RAF1 activation initiates a mitogen-activated protein kinase (MAPK) cascade that comprises a sequential phosphorylation of the dual-specific MAPK kinases (MAP2K1/MEK1 and MAP2K2/MEK2) and the extracellular signal-regulated kinases (MAPK3/ERK1 and MAPK1/ERK2). The phosphorylated form of RAF1 (on residues Ser-338 and Ser-339,by PAK1) phosphorylates BAD/Bcl2-antagonist of cell death at ''Ser-75''. Phosphorylates adenylyl cyclases: ADCY2,ADCY5 and ADCY6,resulting in their activation. Phosphorylates PPP1R12A resulting in inhibition of the phosphatase activity. Phosphorylates TNNT2/cardiac muscle troponin T. Can promote NF-kB activation and inhibit signal transducers involved in motility (ROCK2),apoptosis (MAP3K5/ASK1 and STK3/MST2),proliferation and angiogenesis (RB1). Can protect cells from apoptosis also by translocating to the mitochondria where it binds BCL2 and displaces BAD/Bcl2-antagonist of cell death. Regulates Rho signaling and migration,and is required for normal wound healing. Plays a role in the oncogenic transformation of epithelial cells via repression of the TJ protein,occludin (OCLN) by inducing the up-regulation of a transcriptional repressor SNAI2/SLUG,which induces down-regulation of OCLN. Restricts caspase activation in response to selected stimuli,notably Fas stimulation,pathogen-mediated macrophage apoptosis,and erythroid differentiation. Monomer. Homodimer. Heterodimerizes with BRAF and this heterodimer possesses a highly increased kinase activity compared to the respective homodimers or monomers (PubMed:16508002). Heterodimerization is mitogen-regulated and enhanced by 14-3-3 proteins (PubMed:16508002). MAPK1/ERK2 activation can induce a negative feedback that promotes the dissociation of the heterodimer (PubMed:16508002). Forms a multiprotein complex with Ras (M-Ras/MRAS),SHOC2 and protein phosphatase 1 (PPP1CA,PPP1CB and PPP1CC) (PubMed:16630891). Interacts with LZTR1 (PubMed:30368668). Interacts with Ras proteins; the interaction is antagonized by RIN1 (PubMed:11784866). Weakly interacts with RIT1. Interacts (via N-terminus) with RGS14 (via RBD domains); the interaction mediates the formation of a ternary complex with BRAF,a ternary complex inhibited by GNAI1 (By similarity). Probably forms a complex composed of chaperones HSP90 and HSP70,co-chaperones CDC37,PPP5C,TSC1 and client protein TSC2,CDK4,AKT,RAF1 and NR3C1; this complex does not contain co-chaperones STIP1/HOP and PTGES3/p23 (PubMed:29127155). Interacts with STK3/MST2; the interaction inhibits its pro-apoptotic activity (PubMed:15618521). Interacts (when phosphorylated at Ser-259) with YWHAZ (unphosphorylated at ''Thr-232'') (PubMed:9360956). Interacts with MAP2K1/MEK1 and MAP2K2/MEK2 (By similarity). Interacts with MAP3K5/ASF1 (via N-terminus) and this interaction inhibits the proapoptotic function of MAP3K5/ASK1 (PubMed:11427728). Interacts with PAK1 (via kinase domain) (PubMed:11733498). The phosphorylated form interacts with PIN1 (By similarity). The Ser-338 and Ser-339 phosphorylated form (by PAK1) interacts with BCL2 (PubMed:15849194). Interacts with PEBP1/RKIP and this interaction is enhanced if RAF1 is phosphorylated on residues Ser-338,Ser-339,Tyr-340 and Tyr-341 (PubMed:18294816). Interacts with ADCY2,ADCY5,ADCY6,DGKH,RCAN1/DSCR1,PPP1R12A,PKB/AKT1,PPP2CA,PPP2R1B,SPRY2,SPRY4,CNKSR1/CNK1,KSR2 and PHB/prohibitin (PubMed:10801873,PubMed:11719507,PubMed:12717443,PubMed:15385642,PubMed:15935327,PubMed:19710016,PubMed:10576742). Interacts with ROCK2 (By similarity). In its active form,interacts with PRMT5 (PubMed:21917714). Interacts with FAM83B; displaces 14-3-3 proteins from RAF1 and activates RAF1 (PubMed:22886302). Interacts with PDE8A; the interaction promotes RAF1 activity (PubMed:23509299). Interacts with MFHAS1 (PubMed:23327923).',
        'RAF proto-oncogene serine/threonine-protein kinase',
        'RAF1',
        'https://cdn.rcsb.org/images/rutgers/c1/1c1y/1c1y.pdb-250.jpg',
        '{{2004,1},{2008,1},{2009,3},{2010,2},{2011,1},{2012,2},{2013,65},{2014,61},{2015,56},{2016,71},{2017,5}}'
    ),
    (
        'P06213',
        'Tyr protein kinase family',
        36,
        2922,
        'Also known as INSR_HUMAN,INSR. Receptor tyrosine kinase which mediates the pleiotropic actions of insulin. Binding of insulin leads to phosphorylation of several intracellular substrates,including,insulin receptor substrates (IRS1,2,3,4),SHC,GAB1,CBL and other signaling intermediates. Each of these phosphorylated proteins serve as docking proteins for other signaling proteins that contain Src-homology-2 domains (SH2 domain) that specifically recognize different phosphotyrosine residues,including the p85 regulatory subunit of PI3K and SHP2. Phosphorylation of IRSs proteins lead to the activation of two main signaling pathways: the PI3K-AKT/PKB pathway,which is responsible for most of the metabolic actions of insulin,and the Ras-MAPK pathway,which regulates expression of some genes and cooperates with the PI3K pathway to control cell growth and differentiation. Binding of the SH2 domains of PI3K to phosphotyrosines on IRS1 leads to the activation of PI3K and the generation of phosphatidylinositol-(3,4,5)-triphosphate (PIP3),a lipid second messenger,which activates several PIP3-dependent serine/threonine kinases,such as PDPK1 and subsequently AKT/PKB. The net effect of this pathway is to produce a translocation of the glucose transporter SLC2A4/GLUT4 from cytoplasmic vesicles to the cell membrane to facilitate glucose transport. Moreover,upon insulin stimulation,activated AKT/PKB is responsible for: anti-apoptotic effect of insulin by inducing phosphorylation of BAD; regulates the expression of gluconeogenic and lipogenic enzymes by controlling the activity of the winged helix or forkhead (FOX) class of transcription factors. Another pathway regulated by PI3K-AKT/PKB activation is mTORC1 signaling pathway which regulates cell growth and metabolism and integrates signals from insulin. AKT mediates insulin-stimulated protein synthesis by phosphorylating TSC2 thereby activating mTORC1 pathway. The Ras/RAF/MAP2K/MAPK pathway is mainly involved in mediating cell growth,survival and cellular differentiation of insulin. Phosphorylated IRS1 recruits GRB2/SOS complex,which triggers the activation of the Ras/RAF/MAP2K/MAPK pathway. In addition to binding insulin,the insulin receptor can bind insulin-like growth factors (IGFI and IGFII). Isoform Short has a higher affinity for IGFII binding. When present in a hybrid receptor with IGF1R,binds IGF1. PubMed:12138094 shows that hybrid receptors composed of IGF1R and INSR isoform Long are activated with a high affinity by IGF1,with low affinity by IGF2 and not significantly activated by insulin,and that hybrid receptors composed of IGF1R and INSR isoform Short are activated by IGF1,IGF2 and insulin. In contrast,PubMed:16831875 shows that hybrid receptors composed of IGF1R and INSR isoform Long and hybrid receptors composed of IGF1R and INSR isoform Short have similar binding characteristics,both bind IGF1 and have a low affinity for insulin. Tetramer of 2 alpha and 2 beta chains linked by disulfide bonds. The alpha chains carry the insulin-binding regions,while the beta chains carry the kinase domain. Forms a hybrid receptor with IGF1R,the hybrid is a tetramer consisting of 1 alpha chain and 1 beta chain of INSR and 1 alpha chain and 1 beta chain of IGF1R. Interacts with SORBS1 but dissociates from it following insulin stimulation. Binds SH2B2. Activated form of INSR interacts (via Tyr-999) with the PTB/PID domains of IRS1 and SHC1. The sequences surrounding the phosphorylated NPXY motif contribute differentially to either IRS1 or SHC1 recognition. Interacts (via tyrosines in the C-terminus) with IRS2 (via PTB domain and 591-786 AA); the 591-786 would be the primary anchor of IRS2 to INSR while the PTB domain would have a stabilizing action on the interaction with INSR. Interacts with the SH2 domains of the 85 kDa regulatory subunit of PI3K (PIK3R1) in vitro,when autophosphorylated on tyrosine residues. Interacts with SOCS7. Interacts (via the phosphorylated Tyr-999),with SOCS3. Interacts (via the phosphorylated Tyr-1185,Tyr-1189,Tyr-1190) with SOCS1. Interacts with CAV2 (tyrosine-phosphorylated form); the interaction is increased with ''Tyr-27''phosphorylation of CAV2 (By similarity). Interacts with ARRB2 (By similarity). Interacts with GRB10; this interaction blocks the association between IRS1/IRS2 and INSR,significantly reduces insulin-stimulated tyrosine phosphorylation of IRS1 and IRS2 and thus decreases insulin signaling. Interacts with GRB7. Interacts with PDPK1. Interacts (via Tyr-1190) with GRB14 (via BPS domain); this interaction protects the tyrosines in the activation loop from dephosphorylation,but promotes dephosphorylation of Tyr-999,this results in decreased interaction with,and phosphorylation of,IRS1. Interacts (via subunit alpha) with ENPP1 (via 485-599 AA); this interaction blocks autophosphorylation. Interacts with PTPRE; this interaction is dependent of Tyr-1185,Tyr-1189 and Tyr-1190 of the INSR. Interacts with STAT5B (via SH2 domain). Interacts with PTPRF. Interacts with ATIC; ATIC together with PRKAA2/AMPK2 and HACD3/PTPLAD1 is proposed to be part of a signaling netwok regulating INSR autophosphorylation and endocytosis (By similarity). Interacts with the cone snail venom insulin Con-Ins G1 (PubMed:27617429).',
        'Insulin receptor',
        'INSR',
        'https://cdn.rcsb.org/images/rutgers/ga/1gag/1gag.pdb-250.jpg',
        '{{2004,1},{2008,1},{2009,3},{2010,2},{2011,1},{2012,2},{2013,65},{2014,61},{2015,56},{2016,71},{2017,5}}'
    ),
    (
        'P06241',
        'Tyr protein kinase family',
        30,
        2362,
        'Also known as FYN_HUMAN,FYN. Non-receptor tyrosine-protein kinase that plays a role in many biological processes including regulation of cell growth and survival,cell adhesion,integrin-mediated signaling,cytoskeletal remodeling,cell motility,immune response and axon guidance. Inactive FYN is phosphorylated on its C-terminal tail within the catalytic domain. Following activation by PKA,the protein subsequently associates with PTK2/FAK1,allowing PTK2/FAK1 phosphorylation,activation and targeting to focal adhesions. Involved in the regulation of cell adhesion and motility through phosphorylation of CTNNB1 (beta-catenin) and CTNND1 (delta-catenin). Regulates cytoskeletal remodeling by phosphorylating several proteins including the actin regulator WAS and the microtubule-associated proteins MAP2 and MAPT. Promotes cell survival by phosphorylating AGAP2/PIKE-A and preventing its apoptotic cleavage. Participates in signal transduction pathways that regulate the integrity of the glomerular slit diaphragm (an essential part of the glomerular filter of the kidney) by phosphorylating several slit diaphragm components including NPHS1,KIRREL1 and TRPC6. Plays a role in neural processes by phosphorylating DPYSL2,a multifunctional adapter protein within the central nervous system,ARHGAP32,a regulator for Rho family GTPases implicated in various neural functions,and SNCA,a small pre-synaptic protein. Participates in the downstream signaling pathways that lead to T-cell differentiation and proliferation following T-cell receptor (TCR) stimulation. Phosphorylates PTK2B/PYK2 in response to T-cell receptor activation. Also participates in negative feedback regulation of TCR signaling through phosphorylation of PAG1,thereby promoting interaction between PAG1 and CSK and recruitment of CSK to lipid rafts. CSK maintains LCK and FYN in an inactive form. Promotes CD28-induced phosphorylation of VAV1. Interacts (via its SH3 domain) with PIK3R1 and PRMT8. Interacts with FYB1,PAG1,and SH2D1A. Interacts with CD79A (tyrosine-phosphorylated form); the interaction increases FYN activity. Interacts (via SH2 domain) with CSF1R (tyrosine phosphorylated) (By similarity). Interacts with TOM1L1 (phosphorylated form). Interacts with KDR (tyrosine phosphorylated). Interacts (via SH3 domain) with KLHL2 (via N-terminus) (By similarity). Interacts with SH2D1A and SLAMF1. Interacts with ITCH; the interaction phosphorylates ITCH and negatively regulates its activity. Interacts with FASLG. Interacts with RUNX3. Interacts with KIT. Interacts with EPHA8; possible downstream effector of EPHA8 in regulation of cell adhesion. Interacts with PTK2/FAK1; this interaction leads to PTK2/FAK1 phosphorylation and activation. Interacts with CAV1; this interaction couples integrins to the Ras-ERK pathway. Interacts with UNC119. Interacts (via SH2 domain) with PTPRH (phosphorylated form) (By similarity). Interacts with PTPRO (phosphorylated form) (By similarity). Interacts with PTPRB (phosphorylated form) (By similarity). Interacts with FYB2 (PubMed:27335501). Interacts with DSCAM.',
        'Tyrosine-protein kinase Fyn',
        'FYN',
        'https://cdn.rcsb.org/images/rutgers/a0/1a0n/1a0n.pdb-250.jpg',
        '{{2004,1},{2008,1},{2009,3},{2010,2},{2011,1},{2012,2},{2013,65},{2014,61},{2015,56},{2016,71},{2017,5}}'
    ),
    (
        'P08069',
        'Tyr protein kinase family',
        25,
        4430,
        'Also known as IGF1R_HUMAN,IGF1R. Receptor tyrosine kinase which mediates actions of insulin-like growth factor 1 (IGF1). Binds IGF1 with high affinity and IGF2 and insulin (INS) with a lower affinity. The activated IGF1R is involved in cell growth and survival control. IGF1R is crucial for tumor transformation and survival of malignant cell. Ligand binding activates the receptor kinase,leading to receptor autophosphorylation,and tyrosines phosphorylation of multiple substrates,that function as signaling adapter proteins including,the insulin-receptor substrates (IRS1/2),Shc and 14-3-3 proteins. Phosphorylation of IRSs proteins lead to the activation of two main signaling pathways: the PI3K-AKT/PKB pathway and the Ras-MAPK pathway. The result of activating the MAPK pathway is increased cellular proliferation,whereas activating the PI3K pathway inhibits apoptosis and stimulates protein synthesis. Phosphorylated IRS1 can activate the 85 kDa regulatory subunit of PI3K (PIK3R1),leading to activation of several downstream substrates,including protein AKT/PKB. AKT phosphorylation,in turn,enhances protein synthesis through mTOR activation and triggers the antiapoptotic effects of IGFIR through phosphorylation and inactivation of BAD. In parallel to PI3K-driven signaling,recruitment of Grb2/SOS by phosphorylated IRS1 or Shc leads to recruitment of Ras and activation of the ras-MAPK pathway. In addition to these two main signaling pathways IGF1R signals also through the Janus kinase/signal transducer and activator of transcription pathway (JAK/STAT). Phosphorylation of JAK proteins can lead to phosphorylation/activation of signal transducers and activators of transcription (STAT) proteins. In particular activation of STAT3,may be essential for the transforming activity of IGF1R. The JAK/STAT pathway activates gene transcription and may be responsible for the transforming activity. JNK kinases can also be activated by the IGF1R. IGF1 exerts inhibiting activities on JNK activation via phosphorylation and inhibition of MAP3K5/ASK1,which is able to directly associate with the IGF1R.,When present in a hybrid receptor with INSR,binds IGF1. PubMed:12138094 shows that hybrid receptors composed of IGF1R and INSR isoform Long are activated with a high affinity by IGF1,with low affinity by IGF2 and not significantly activated by insulin,and that hybrid receptors composed of IGF1R and INSR isoform Short are activated by IGF1,IGF2 and insulin. In contrast,PubMed:16831875 shows that hybrid receptors composed of IGF1R and INSR isoform Long and hybrid receptors composed of IGF1R and INSR isoform Short have similar binding characteristics,both bind IGF1 and have a low affinity for insulin. Tetramer of 2 alpha and 2 beta chains linked by disulfide bonds. The alpha chains contribute to the formation of the ligand-binding domain,while the beta chain carries the kinase domain. Interacts with PIK3R1 and with the PTB/PID domains of IRS1 and SHC1 in vitro when autophosphorylated on tyrosine residues. Forms a hybrid receptor with INSR,the hybrid is a tetramer consisting of 1 alpha chain and 1 beta chain of INSR and 1 alpha chain and 1 beta chain of IGF1R. Interacts with ARRB1 and ARRB2. Interacts with GRB10. Interacts with RACK1. Interacts with SOCS1,SOCS2 and SOCS3. Interacts with 14-3-3 proteins. Interacts with NMD2. Interacts with MAP3K5. Interacts with STAT3. Found in a ternary complex with IGF1 and ITGAV:ITGB3 or ITGA6:ITGB4 (PubMed:19578119,PubMed:22351760). Interacts (nascent precursor form) with ZFAND2B (PubMed:26692333).',
        'Insulin-like growth factor 1 receptor',
        'IGF1R',
        'https://cdn.rcsb.org/images/rutgers/ig/1igr/1igr.pdb-250.jpg',
        '{{2004,1},{2008,1},{2009,3},{2010,2},{2011,1},{2012,2},{2013,65},{2014,61},{2015,56},{2016,71},{2017,5}}'
    ),
    (
        'Q08881',
        'Tyr protein kinase family',
        36,
        1655,
        'Also known as ITK_HUMAN,ITK,EMT,LYK. Tyrosine kinase that plays an essential role in regulation of the adaptive immune response. Regulates the development,function and differentiation of conventional T-cells and nonconventional NKT-cells. When antigen presenting cells (APC) activate T-cell receptor (TCR),a series of phosphorylation lead to the recruitment of ITK to the cell membrane,in the vicinity of the stimulated TCR receptor,where it is phosphorylated by LCK. Phosphorylation leads to ITK autophosphorylation and full activation. Once activated,phosphorylates PLCG1,leading to the activation of this lipase and subsequent cleavage of its substrates. In turn,the endoplasmic reticulum releases calcium in the cytoplasm and the nuclear activator of activated T-cells (NFAT) translocates into the nucleus to perform its transcriptional duty. Phosphorylates 2 essential adapter proteins: the linker for activation of T-cells/LAT protein and LCP2. Then,a large number of signaling molecules such as VAV1 are recruited and ultimately lead to lymphokine production,T-cell proliferation and differentiation (PubMed:12186560,PubMed:12682224,PubMed:21725281). Phosphorylates TBX21 at ''Tyr-530'' and mediates its interaction with GATA3. Homooligomerizes; this association negatively regulates kinase activity (By similarity). Interacts with PPIA/CYPA; this interaction regulates TCR signal strength via a proline-directed conformational switch in ITK. Interacts with THEMIS (By similarity). Interacts with FASLG. Interacts with VAV1; this interaction is important for VAV1 localization and TCR-induced actin polarization. Interacts with TBX21.',
        'Tyrosine-protein kinase ITK/TSK',
        'ITK',
        'https://cdn.rcsb.org/images/rutgers/sm/1sm2/1sm2.pdb-250.jpg',
        '{{2004,1},{2008,1},{2009,3},{2010,2},{2011,1},{2012,2},{2013,65},{2014,61},{2015,56},{2016,71},{2017,5}}'
    ),
    (
        'Q15375',
        'Tyr protein kinase family',
        4,
        484,
        'Also known as EPHA7_HUMAN,EPHA7,EHK3,HEK11. Receptor tyrosine kinase which binds promiscuously GPI-anchored ephrin-A family ligands residing on adjacent cells,leading to contact-dependent bidirectional signaling into neighboring cells. The signaling pathway downstream of the receptor is referred to as forward signaling while the signaling pathway downstream of the ephrin ligand is referred to as reverse signaling. Among GPI-anchored ephrin-A ligands,EFNA5 is a cognate/functional ligand for EPHA7 and their interaction regulates brain development modulating cell-cell adhesion and repulsion. Has a repellent activity on axons and is for instance involved in the guidance of corticothalamic axons and in the proper topographic mapping of retinal axons to the colliculus. May also regulate brain development through a caspase(CASP3)-dependent proapoptotic activity. Forward signaling may result in activation of components of the ERK signaling pathway including MAP2K1,MAP2K2,MAPK1 AND MAPK3 which are phosphorylated upon activation of EPHA7. Heterotetramer upon binding of the ligand. The heterotetramer is composed of an ephrin dimer and a receptor dimer. Oligomerization is probably required to induce biological responses (By similarity). Interacts (via PDZ-binding motif) with GRIP1 and PICK1 (via PDZ domain).',
        'Ephrin type-A receptor 7',
        'EPHA7',
        'https://cdn.rcsb.org/images/rutgers/re/2rei/2rei.pdb-250.jpg',
        '{{2004,1},{2008,1},{2009,3},{2010,2},{2011,1},{2012,2},{2013,65},{2014,61},{2015,56},{2016,71},{2017,5}}'
    ),
    (
        'P10721',
        'Tyr protein kinase family',
        18,
        2857,
        'Also known as KIT_HUMAN,KIT,SCFR. Tyrosine-protein kinase that acts as cell-surface receptor for the cytokine KITLG/SCF and plays an essential role in the regulation of cell survival and proliferation,hematopoiesis,stem cell maintenance,gametogenesis,mast cell development,migration and function,and in melanogenesis. In response to KITLG/SCF binding,KIT can activate several signaling pathways. Phosphorylates PIK3R1,PLCG1,SH2B2/APS and CBL. Activates the AKT1 signaling pathway by phosphorylation of PIK3R1,the regulatory subunit of phosphatidylinositol 3-kinase. Activated KIT also transmits signals via GRB2 and activation of RAS,RAF1 and the MAP kinases MAPK1/ERK2 and/or MAPK3/ERK1. Promotes activation of STAT family members STAT1,STAT3,STAT5A and STAT5B. Activation of PLCG1 leads to the production of the cellular signaling molecules diacylglycerol and inositol 1,4,5-trisphosphate. KIT signaling is modulated by protein phosphatases,and by rapid internalization and degradation of the receptor. Activated KIT promotes phosphorylation of the protein phosphatases PTPN6/SHP-1 and PTPRU,and of the transcription factors STAT1,STAT3,STAT5A and STAT5B. Promotes phosphorylation of PIK3R1,CBL,CRK (isoform Crk-II),LYN,MAPK1/ERK2 and/or MAPK3/ERK1,PLCG1,SRC and SHC1. Monomer in the absence of bound KITLG/SCF. Homodimer in the presence of bound KITLG/SCF,forming a heterotetramer with two KITLG/SCF molecules. Interacts (via phosphorylated tyrosine residues) with the adapter proteins GRB2 and GRB7 (via SH2 domain),and SH2B2/APS. Interacts (via C-terminus) with MPDZ (via the tenth PDZ domain). Interacts (via phosphorylated tyrosine residues) with PIK3R1 and PIK3 catalytic subunit. Interacts (via phosphorylated tyrosine) with CRK (isoform Crk-II),FYN,SHC1 and MATK/CHK (via SH2 domain). Interacts with LYN and FES/FPS. Interacts (via phosphorylated tyrosine residues) with the protein phosphatases PTPN6/SHP-1 (via SH2 domain),PTPN11/SHP-2 (via SH2 domain) and PTPRU. Interacts with PLCG1. Interacts with DOK1 and TEC. Interacts (KITLG/SCF-bound) with IL1RL1. Interacts with IL1RAP (independent of stimulation with KITLG/SCF). A mast cell-specific KITLG/SCF-induced interleukin-33 signaling complex contains IL1RL1,IL1RAP,KIT and MYD88.',
        'Mast/stem cell growth factor receptor Kit',
        'KIT',
        'https://cdn.rcsb.org/images/rutgers/pk/1pkg/1pkg.pdb-250.jpg',
        '{{2004,1},{2008,1},{2009,3},{2010,2},{2011,1},{2012,2},{2013,65},{2014,61},{2015,56},{2016,71},{2017,5}}'
    ),
    (
        'P04626',
        'Tyr protein kinase family',
        33,
        5220,
        'Also known as ERBB2_HUMAN,ERBB2,HER2,MLN19,NEU,NGL. Protein tyrosine kinase that is part of several cell surface receptor complexes,but that apparently needs a coreceptor for ligand binding. Essential component of a neuregulin-receptor complex,although neuregulins do not interact with it alone. GP30 is a potential ligand for this receptor. Regulates outgrowth and stabilization of peripheral microtubules (MTs). Upon ERBB2 activation,the MEMO1-RHOA-DIAPH1 signaling pathway elicits the phosphorylation and thus the inhibition of GSK3B at cell membrane. This prevents the phosphorylation of APC and CLASP2,allowing its association with the cell membrane. In turn,membrane-bound APC allows the localization of MACF1 to the cell membrane,which is required for microtubule capture and stabilization.,In the nucleus is involved in transcriptional regulation. Associates with the 5''-TCAAATTC-3'' sequence in the PTGS2/COX-2 promoter and activates its transcription. Implicated in transcriptional activation of CDKN1A; the function involves STAT3 and SRC. Involved in the transcription of rRNA genes by RNA Pol I and enhances protein synthesis and cell growth. Homodimer (PubMed:21454582). Heterodimer with EGFR,ERBB3 and ERBB4 (PubMed:10358079,PubMed:15093539,PubMed:21190959,PubMed:16978839). Part of a complex with EGFR and either PIK3C2A or PIK3C2B. May interact with PIK3C2B when phosphorylated on Tyr-1196 (PubMed:10805725). Interacts with PLXNB1 (PubMed:15210733). Interacts (when phosphorylated on Tyr-1248) with MEMO1 (PubMed:15156151). Interacts with MUC1; the interaction is enhanced by heregulin (HRG) (PubMed:12939402). Interacts (when phosphorylated on Tyr-1139) with GRB7 (via SH2 domain) (PubMed:12975581). Interacts (when phosphorylated on Tyr-1248) with ERBIN (PubMed:12444095). Interacts with KPNB1,RANBP2,EEA1,CRM1 and CLTC (PubMed:16314522). Interacts with PTK6 (PubMed:18719096). Interacts with RPA194 and ACTB (PubMed:21555369). Interacts with PRKCABP,SRC and MYOC (By similarity). Interacts (preferentially with the tyrosine phosphorylated form) with CPNE3; this interaction occurs at the cell membrane and is increased in a growth factor heregulin-dependent manner (PubMed:20010870). Interacts with HSP90AA1 and HSP90AB1 in an ATP-dependent manner; the interaction suppresses ERBB2 kinase activity (PubMed:26517842).',
        'Receptor tyrosine-protein kinase erbB-2',
        'ERBB2',
        'https://cdn.rcsb.org/images/rutgers/mf/1mfg/1mfg.pdb-250.jpg',
        '{{2004,1},{2008,1},{2009,3},{2010,2},{2011,1},{2012,2},{2013,65},{2014,61},{2015,56},{2016,71},{2017,5}}'
    ),
    (
        'P07948',
        'Tyr protein kinase family',
        5,
        1764,
        'Also known as LYN_HUMAN,LYN,JTK8. Non-receptor tyrosine-protein kinase that transmits signals from cell surface receptors and plays an important role in the regulation of innate and adaptive immune responses,hematopoiesis,responses to growth factors and cytokines,integrin signaling,but also responses to DNA damage and genotoxic agents. Functions primarily as negative regulator,but can also function as activator,depending on the context. Required for the initiation of the B-cell response,but also for its down-regulation and termination. Plays an important role in the regulation of B-cell differentiation,proliferation,survival and apoptosis,and is important for immune self-tolerance. Acts downstream of several immune receptors,including the B-cell receptor,CD79A,CD79B,CD5,CD19,CD22,FCER1,FCGR2,FCGR1A,TLR2 and TLR4. Plays a role in the inflammatory response to bacterial lipopolysaccharide. Mediates the responses to cytokines and growth factors in hematopoietic progenitors,platelets,erythrocytes,and in mature myeloid cells,such as dendritic cells,neutrophils and eosinophils. Acts downstream of EPOR,KIT,MPL,the chemokine receptor CXCR4,as well as the receptors for IL3,IL5 and CSF2. Plays an important role in integrin signaling. Regulates cell proliferation,survival,differentiation,migration,adhesion,degranulation,and cytokine release. Down-regulates signaling pathways by phosphorylation of immunoreceptor tyrosine-based inhibitory motifs (ITIM),that then serve as binding sites for phosphatases,such as PTPN6/SHP-1,PTPN11/SHP-2 and INPP5D/SHIP-1,that modulate signaling by dephosphorylation of kinases and their substrates. Phosphorylates LIME1 in response to CD22 activation. Phosphorylates BTK,CBL,CD5,CD19,CD72,CD79A,CD79B,CSF2RB,DOK1,HCLS1,LILRB3/PIR-B,MS4A2/FCER1B,SYK and TEC. Promotes phosphorylation of SIRPA,PTPN6/SHP-1,PTPN11/SHP-2 and INPP5D/SHIP-1. Mediates phosphorylation of the BCR-ABL fusion protein. Required for rapid phosphorylation of FER in response to FCER1 activation. Mediates KIT phosphorylation. Acts as an effector of EPOR (erythropoietin receptor) in controlling KIT expression and may play a role in erythroid differentiation during the switch between proliferation and maturation. Depending on the context,activates or inhibits several signaling cascades. Regulates phosphatidylinositol 3-kinase activity and AKT1 activation. Regulates activation of the MAP kinase signaling cascade,including activation of MAP2K1/MEK1,MAPK1/ERK2,MAPK3/ERK1,MAPK8/JNK1 and MAPK9/JNK2. Mediates activation of STAT5A and/or STAT5B. Phosphorylates LPXN on ''Tyr-72''. Kinase activity facilitates TLR4-TLR6 heterodimerization and signal initiation. Interacts with TEC. Interacts (via SH2 domain) with FLT3 (tyrosine phosphorylated). Interacts with LIME1 and with CD79A upon activation of the B-cell antigen receptor. Interacts with the B-cell receptor complex. Interacts with phosphorylated THEMIS2. Interacts with EPOR. Interacts with MS4A2/FCER1B. Interaction (via the SH2 and SH3 domains) with MUC1 is stimulated by IL7 and the subsequent phosphorylation increases the binding between MUC1 and CTNNB1/beta-catenin. Interacts with ADAM15. Interacts with NDFIP2 and more weakly with NDFIP1. Interacts with FASLG. Interacts with KIT. Interacts with HCLS1. Interacts with FCGR2B. Interacts with FCGR1A; the interaction may be indirect. Interacts with CD19,CD22,CD79A and CD79B. Interacts (via SH3 domain) with CBLC,PPP1R15A and PDE4A. Interacts with TGFB1I1. Interacts (via SH3 domain) with PIK3R1,the regulatory subunit of phosphatidylinositol 3-kinase; this interaction enhances phosphatidylinositol 3-kinase activity. Interacts with CSF2RB,the common subunit of the IL3,IL5 and CSF2 receptors. Interacts with PAG1; identified in a complex with PAG1 and STAT3. Interacts with ABL1. Interacts with PTPN6/SHP-1. Interacts (via SH3 domain) with SCIMP (via proline-rich region). Interacts with LPXN (via LD motif 3) and the interaction is induced upon B-cell antigen receptor (BCR) activation. Interacts (via SH3-domain) with ANKRD54 (via ankyrin repeat region) in an activation-independent status of LYN. Forms a multiprotein complex with ANKRD54 and HCLS1. Interacts (via SH2 and SH3 domains) with UNC119; leading to LYN activation. Interacts with CD36. Interacts with LYN.',
        'Tyrosine-protein kinase Lyn',
        'LYN',
        'https://cdn.rcsb.org/images/rutgers/w1/1w1f/1w1f.pdb-250.jpg',
        '{{2004,1},{2008,1},{2009,3},{2010,2},{2011,1},{2012,2},{2013,65},{2014,61},{2015,56},{2016,71},{2017,5}}'
    ),
    (
        'P08581',
        'Tyr protein kinase family',
        80,
        5211,
        'Also known as MET_HUMAN,MET. Receptor tyrosine kinase that transduces signals from the extracellular matrix into the cytoplasm by binding to hepatocyte growth factor/HGF ligand. Regulates many physiological processes including proliferation,scattering,morphogenesis and survival. Ligand binding at the cell surface induces autophosphorylation of MET on its intracellular domain that provides docking sites for downstream signaling molecules. Following activation by ligand,interacts with the PI3-kinase subunit PIK3R1,PLCG1,SRC,GRB2,STAT3 or the adapter GAB1. Recruitment of these downstream effectors by MET leads to the activation of several signaling cascades including the RAS-ERK,PI3 kinase-AKT,or PLCgamma-PKC. The RAS-ERK activation is associated with the morphogenetic effects while PI3K/AKT coordinates prosurvival effects. During embryonic development,MET signaling plays a role in gastrulation,development and migration of muscles and neuronal precursors,angiogenesis and kidney formation. In adults,participates in wound healing as well as organ regeneration and tissue remodeling. Promotes also differentiation and proliferation of hematopoietic cells. May regulate cortical bone osteogenesis.,(Microbial infection) Acts as a receptor for Listeria monocytogenes internalin InlB,mediating entry of the pathogen into cells. Heterodimer made of an alpha chain (50 kDa) and a beta chain (145 kDa) which are disulfide linked. Binds PLXNB1. Interacts when phosphorylated with downstream effectors including STAT3,PIK3R1,SRC,PCLG1,GRB2 and GAB1. Interacts with SPSB1,SPSB2 and SPSB4 (By similarity). Interacts with INPP5D/SHIP1. When phosphorylated at Tyr-1356,interacts with INPPL1/SHIP2. Interacts with RANBP9 and RANBP10,as well as SPSB1,SPSB2,SPSB3 and SPSB4. SPSB1 binding occurs in the presence and in the absence of HGF,however HGF treatment has a positive effect on this interaction. Interacts with MUC20; prevents interaction with GRB2 and suppresses hepatocyte growth factor-induced cell proliferation. Interacts with GRB10. Interacts with PTPN1 and PTPN2. Interacts with LECT2; this interaction may have an antagonistic effect on receptor activation (PubMed:27334921). Interacts with HSP90AA1 and HSP90AB1; the interaction suppresses MET kinase activity (PubMed:26517842).',
        'Hepatocyte growth factor receptor',
        'MET',
        'https://cdn.rcsb.org/images/rutgers/fy/1fyr/1fyr.pdb-250.jpg',
        '{{2004,1},{2008,1},{2009,3},{2010,2},{2011,1},{2012,2},{2013,65},{2014,61},{2015,56},{2016,71},{2017,5}}'
    ),
    (
        'P29317',
        'Tyr protein kinase family',
        63,
        1510,
        'Also known as EPHA2_HUMAN,EPHA2,ECK. Receptor tyrosine kinase which binds promiscuously membrane-bound ephrin-A family ligands residing on adjacent cells,leading to contact-dependent bidirectional signaling into neighboring cells. The signaling pathway downstream of the receptor is referred to as forward signaling while the signaling pathway downstream of the ephrin ligand is referred to as reverse signaling. Activated by the ligand ephrin-A1/EFNA1 regulates migration,integrin-mediated adhesion,proliferation and differentiation of cells. Regulates cell adhesion and differentiation through DSG1/desmoglein-1 and inhibition of the ERK1/ERK2 (MAPK3/MAPK1,respectively) signaling pathway. May also participate in UV radiation-induced apoptosis and have a ligand-independent stimulatory effect on chemotactic cell migration. During development,may function in distinctive aspects of pattern formation and subsequently in development of several fetal tissues. Involved for instance in angiogenesis,in early hindbrain development and epithelial proliferation and branching morphogenesis during mammary gland development. Engaged by the ligand ephrin-A5/EFNA5 may regulate lens fiber cells shape and interactions and be important for lens transparency development and maintenance. With ephrin-A2/EFNA2 may play a role in bone remodeling through regulation of osteoclastogenesis and osteoblastogenesis.,(Microbial infection) Acts as a receptor for hepatitis C virus (HCV) in hepatocytes and facilitates its cell entry. Mediates HCV entry by promoting the formation of the CD81-CLDN1 receptor complexes that are essential for HCV entry and by enhancing membrane fusion of cells expressing HCV envelope glycoproteins. Homodimer. Interacts with SLA. Interacts (phosphorylated form) with VAV2,VAV3 and PI3-kinase p85 subunit (PIK3R1,PIK3R2 or PIK3R3); critical for the EFNA1-induced activation of RAC1 which stimulates cell migration (By similarity). Interacts with INPPL1; regulates activated EPHA2 endocytosis and degradation. Interacts (inactivated form) with PTK2/FAK1 and interacts (EFNA1 ligand-activated form) with PTPN11; regulates integrin-mediated adhesion. Interacts with ARHGEF16,DOCK4 and ELMO2; mediates ligand-independent activation of RAC1 which stimulates cell migration. Interacts with CLDN4; phosphorylates CLDN4 and may regulate tight junctions. Interacts with ACP1. Interacts (via SAM domain) with ANKS1A (via SAM domain). Interacts with CEMIP. Interacts with NCK1; may regulate EPHA2 activity in cell migration and adhesion.',
        'Ephrin type-A receptor 2',
        'EPHA2',
        'https://cdn.rcsb.org/images/rutgers/mq/1mqb/1mqb.pdb-250.jpg',
        '{{2004,1},{2008,1},{2009,3},{2010,2},{2011,1},{2012,2},{2013,65},{2014,61},{2015,56},{2016,71},{2017,5}}'
    ),
    (
        'P29320',
        'Tyr protein kinase family',
        27,
        735,
        'Also known as EPHA3_HUMAN,EPHA3,ETK,ETK1,HEK,TYRO4. Receptor tyrosine kinase which binds promiscuously membrane-bound ephrin family ligands residing on adjacent cells,leading to contact-dependent bidirectional signaling into neighboring cells. The signaling pathway downstream of the receptor is referred to as forward signaling while the signaling pathway downstream of the ephrin ligand is referred to as reverse signaling. Highly promiscuous for ephrin-A ligands it binds preferentially EFNA5. Upon activation by EFNA5 regulates cell-cell adhesion,cytoskeletal organization and cell migration. Plays a role in cardiac cells migration and differentiation and regulates the formation of the atrioventricular canal and septum during development probably through activation by EFNA1. Involved in the retinotectal mapping of neurons. May also control the segregation but not the guidance of motor and sensory axons during neuromuscular circuit development. Heterotetramer upon binding of the ligand. The heterotetramer is composed of an ephrin dimer and a receptor dimer. Oligomerization is probably required to induce biological responses. Forms a ternary EFNA5-EPHA3-ADAM10 complex mediating EFNA5 extracellular domain shedding by ADAM10 which regulates the EFNA5-EPHA3 complex internalization and function. Interacts with NCK1 (via SH2 domain); mediates EFNA5-EPHA3 signaling (By similarity). Interacts (phosphorylated) with PTPN1; dephosphorylates EPHA3 and may regulate its trafficking and function. Interacts (phosphorylated) with CRK; mediates EFNA5-EPHA3 signaling through RHOA GTPase activation.',
        'Ephrin type-A receptor 3',
        'EPHA3',
        'https://cdn.rcsb.org/images/rutgers/gs/2gsf/2gsf.pdb-250.jpg',
        '{{2004,1},{2008,1},{2009,3},{2010,2},{2011,1},{2012,2},{2013,65},{2014,61},{2015,56},{2016,71},{2017,5}}'
    ),
    (
        'Q02763',
        'Tyr protein kinase family',
        15,
        1801,
        'Also known as TIE2_HUMAN,TEK,TIE2,VMCM,VMCM1. Tyrosine-protein kinase that acts as cell-surface receptor for ANGPT1,ANGPT2 and ANGPT4 and regulates angiogenesis,endothelial cell survival,proliferation,migration,adhesion and cell spreading,reorganization of the actin cytoskeleton,but also maintenance of vascular quiescence. Has anti-inflammatory effects by preventing the leakage of proinflammatory plasma proteins and leukocytes from blood vessels. Required for normal angiogenesis and heart development during embryogenesis. Required for post-natal hematopoiesis. After birth,activates or inhibits angiogenesis,depending on the context. Inhibits angiogenesis and promotes vascular stability in quiescent vessels,where endothelial cells have tight contacts. In quiescent vessels,ANGPT1 oligomers recruit TEK to cell-cell contacts,forming complexes with TEK molecules from adjoining cells,and this leads to preferential activation of phosphatidylinositol 3-kinase and the AKT1 signaling cascades. In migrating endothelial cells that lack cell-cell adhesions,ANGT1 recruits TEK to contacts with the extracellular matrix,leading to the formation of focal adhesion complexes,activation of PTK2/FAK and of the downstream kinases MAPK1/ERK2 and MAPK3/ERK1,and ultimately to the stimulation of sprouting angiogenesis. ANGPT1 signaling triggers receptor dimerization and autophosphorylation at specific tyrosine residues that then serve as binding sites for scaffold proteins and effectors. Signaling is modulated by ANGPT2 that has lower affinity for TEK,can promote TEK autophosphorylation in the absence of ANGPT1,but inhibits ANGPT1-mediated signaling by competing for the same binding site. Signaling is also modulated by formation of heterodimers with TIE1,and by proteolytic processing that gives rise to a soluble TEK extracellular domain. The soluble extracellular domain modulates signaling by functioning as decoy receptor for angiopoietins. TEK phosphorylates DOK2,GRB7,GRB14,PIK3R1; SHC1 and TIE1. Homodimer. Heterodimer with TIE1. Interacts with ANGPT1,ANGPT2 and ANGPT4. At cell-cell contacts in quiescent cells,forms a signaling complex composed of ANGPT1 plus TEK molecules from two adjoining cells. In the absence of endothelial cell-cell contacts,interaction with ANGPT1 mediates contacts with the extracellular matrix. Interacts with PTPRB; this promotes endothelial cell-cell adhesion. Interacts with DOK2,GRB2,GRB7,GRB14,PIK3R1 and PTPN11/SHP2. Colocalizes with DOK2 at contacts with the extracellular matrix in migrating cells. Interacts (tyrosine phosphorylated) with TNIP2. Interacts (tyrosine phosphorylated) with SHC1 (via SH2 domain).',
        'Angiopoietin-1 receptor',
        'TEK',
        'https://cdn.rcsb.org/images/rutgers/fv/1fvr/1fvr.pdb-250.jpg',
        '{{2004,1},{2008,1},{2009,3},{2010,2},{2011,1},{2012,2},{2013,65},{2014,61},{2015,56},{2016,71},{2017,5}}'
    ),
    (
        'P54756',
        'Tyr protein kinase family',
        2,
        519,
        'Also known as EPHA5_HUMAN,EPHA5,BSK,EHK1,HEK7,TYRO4. Receptor tyrosine kinase which binds promiscuously GPI-anchored ephrin-A family ligands residing on adjacent cells,leading to contact-dependent bidirectional signaling into neighboring cells. The signaling pathway downstream of the receptor is referred to as forward signaling while the signaling pathway downstream of the ephrin ligand is referred to as reverse signaling. Among GPI-anchored ephrin-A ligands,EFNA5 most probably constitutes the cognate/functional ligand for EPHA5. Functions as an axon guidance molecule during development and may be involved in the development of the retinotectal,entorhino-hippocampal and hippocamposeptal pathways. Together with EFNA5 plays also a role in synaptic plasticity in adult brain through regulation of synaptogenesis. In addition to its function in the nervous system,the interaction of EPHA5 with EFNA5 mediates communication between pancreatic islet cells to regulate glucose-stimulated insulin secretion. Heterotetramer upon binding of the ligand. The heterotetramer is composed of an ephrin dimer and a receptor dimer. Oligomerization is probably required to induce biological responses (By similarity). Interacts (via SAM domain) with SAMD5 (via SAM domain).',
        'Ephrin type-A receptor 5',
        'EPHA5',
        'https://cdn.rcsb.org/images/rutgers/r2/2r2p/2r2p.pdb-250.jpg',
        '{{2004,1},{2008,1},{2009,3},{2010,2},{2011,1},{2012,2},{2013,65},{2014,61},{2015,56},{2016,71},{2017,5}}'
    ),
    (
        'Q9UM73',
        'Tyr protein kinase family',
        61,
        2685,
        'Also known as ALK_HUMAN,ALK. Neuronal receptor tyrosine kinase that is essentially and transiently expressed in specific regions of the central and peripheral nervous systems and plays an important role in the genesis and differentiation of the nervous system. Transduces signals from ligands at the cell surface,through specific activation of the mitogen-activated protein kinase (MAPK) pathway. Phosphorylates almost exclusively at the first tyrosine of the Y-x-x-x-Y-Y motif. Following activation by ligand,ALK induces tyrosine phosphorylation of CBL,FRS2,IRS1 and SHC1,as well as of the MAP kinases MAPK1/ERK2 and MAPK3/ERK1. Acts as a receptor for ligands pleiotrophin (PTN),a secreted growth factor,and midkine (MDK),a PTN-related factor,thus participating in PTN and MDK signal transduction. PTN-binding induces MAPK pathway activation,which is important for the anti-apoptotic signaling of PTN and regulation of cell proliferation. MDK-binding induces phosphorylation of the ALK target insulin receptor substrate (IRS1),activates mitogen-activated protein kinases (MAPKs) and PI3-kinase,resulting also in cell proliferation induction. Drives NF-kappa-B activation,probably through IRS1 and the activation of the AKT serine/threonine kinase. Recruitment of IRS1 to activated ALK and the activation of NF-kappa-B are essential for the autocrine growth and survival signaling of MDK. Homodimer. Homodimerizes when bound to ligand. Interacts with FRS2,IRS1,MDK,PTN and SHC1. Interacts with CBL,PIK3R1 and PLCG1.',
        'ALK tyrosine kinase receptor',
        'ALK',
        'https://cdn.rcsb.org/images/rutgers/ku/2kup/2kup.pdb-250.jpg',
        '{{2004,1},{2008,1},{2009,3},{2010,2},{2011,1},{2012,2},{2013,65},{2014,61},{2015,56},{2016,71},{2017,5}}'
    ),
    (
        'P35968',
        'Tyr protein kinase family',
        51,
        11286,
        'Also known as VGFR2_HUMAN,KDR,FLK1,VEGFR2. Tyrosine-protein kinase that acts as a cell-surface receptor for VEGFA,VEGFC and VEGFD. Plays an essential role in the regulation of angiogenesis,vascular development,vascular permeability,and embryonic hematopoiesis. Promotes proliferation,survival,migration and differentiation of endothelial cells. Promotes reorganization of the actin cytoskeleton. Isoforms lacking a transmembrane domain,such as isoform 2 and isoform 3,may function as decoy receptors for VEGFA,VEGFC and/or VEGFD. Isoform 2 plays an important role as negative regulator of VEGFA- and VEGFC-mediated lymphangiogenesis by limiting the amount of free VEGFA and/or VEGFC and preventing their binding to FLT4. Modulates FLT1 and FLT4 signaling by forming heterodimers. Binding of vascular growth factors to isoform 1 leads to the activation of several signaling cascades. Activation of PLCG1 leads to the production of the cellular signaling molecules diacylglycerol and inositol 1,4,5-trisphosphate and the activation of protein kinase C. Mediates activation of MAPK1/ERK2,MAPK3/ERK1 and the MAP kinase signaling pathway,as well as of the AKT1 signaling pathway. Mediates phosphorylation of PIK3R1,the regulatory subunit of phosphatidylinositol 3-kinase,reorganization of the actin cytoskeleton and activation of PTK2/FAK1. Required for VEGFA-mediated induction of NOS2 and NOS3,leading to the production of the signaling molecule nitric oxide (NO) by endothelial cells. Phosphorylates PLCG1. Promotes phosphorylation of FYN,NCK1,NOS3,PIK3R1,PTK2/FAK1 and SRC. Homodimer in the presence of bound dimeric VEGFA,VEGFC or VEGFD ligands; monomeric in the absence of bound ligands. Can also form heterodimers with FLT1/VEGFR1 and FLT4/VEGFR2. Interacts (tyrosine phosphorylated) with LFYN,NCK1,PLCG1. Interacts (tyrosine-phosphorylated active form preferentially) with DAB2IP (via C2 domain and active form preferentially); the interaction occurs at the late phase of VEGFA response and inhibits KDR/VEGFR2 activity. Interacts with SHBSH2D2A/TSAD,GRB2,MYOF,CBL and PDCD6. Interacts (via C-terminus domain) with ERN1 (via kinase domain); the interaction is facilitated in a XBP1 isoform 1- and vascular endothelial growth factor (VEGF)-dependent manner in endothelial cells (PubMed:23529610).',
        'Vascular endothelial growth factor receptor 2',
        'KDR',
        'https://cdn.rcsb.org/images/rutgers/vr/1vr2/1vr2.pdb-250.jpg',
        '{{2004,1},{2008,1},{2009,3},{2010,2},{2011,1},{2012,2},{2013,65},{2014,61},{2015,56},{2016,71},{2017,5}}'
    ),
    (
        'P36507',
        'STE Ser/Thr protein kinase family',
        3,
        637,
        'Also known as MP2K2_HUMAN,MAP2K2,MEK2,MKK2,PRKMK2. Catalyzes the concomitant phosphorylation of a threonine and a tyrosine residue in a Thr-Glu-Tyr sequence located in MAP kinases. Activates the ERK1 and ERK2 MAP kinases. Interacts with MORG1 (By similarity). Interacts with SGK1 (PubMed:19447520). Interacts with KSR1 (PubMed:10409742).',
        'Dual specificity mitogen-activated protein kinase kinase 2',
        'MAP2K2',
        'https://cdn.rcsb.org/images/rutgers/s9/1s9i/1s9i.pdb-250.jpg',
        '{{2004,1},{2008,1},{2009,3},{2010,2},{2011,1},{2012,2},{2013,65},{2014,61},{2015,56},{2016,71},{2017,5}}'
    ),
    (
        'P06239',
        'Tyr protein kinase family',
        55,
        4813,
        'Also known as LCK_HUMAN,LCK. Non-receptor tyrosine-protein kinase that plays an essential role in the selection and maturation of developing T-cells in the thymus and in the function of mature T-cells. Plays a key role in T-cell antigen receptor (TCR)-linked signal transduction pathways. Constitutively associated with the cytoplasmic portions of the CD4 and CD8 surface receptors. Association of the TCR with a peptide antigen-bound MHC complex facilitates the interaction of CD4 and CD8 with MHC class II and class I molecules,respectively,thereby recruiting the associated LCK protein to the vicinity of the TCR/CD3 complex. LCK then phosphorylates tyrosine residues within the immunoreceptor tyrosine-based activation motifs (ITAM) of the cytoplasmic tails of the TCR-gamma chains and CD3 subunits,initiating the TCR/CD3 signaling pathway. Once stimulated,the TCR recruits the tyrosine kinase ZAP70,that becomes phosphorylated and activated by LCK. Following this,a large number of signaling molecules are recruited,ultimately leading to lymphokine production. LCK also contributes to signaling by other receptor molecules. Associates directly with the cytoplasmic tail of CD2,which leads to hyperphosphorylation and activation of LCK. Also plays a role in the IL2 receptor-linked signaling pathway that controls the T-cell proliferative response. Binding of IL2 to its receptor results in increased activity of LCK. Is expressed at all stages of thymocyte development and is required for the regulation of maturation events that are governed by both pre-TCR and mature alpha beta TCR. Phosphorylates other substrates including RUNX3,PTK2B/PYK2,the microtubule-associated protein MAPT,RHOH or TYROBP. Interacts with FYB2 (PubMed:27335501). Binds to the cytoplasmic domain of cell surface receptors,such as AXL,CD2,CD4,CD5,CD8,CD44,CD45 and CD122. Also binds to effector molecules,such as PI4K,VAV1,RASA1,FYB1 and to other protein kinases including CDK1,RAF1,ZAP70 and SYK. Binds to phosphatidylinositol 3''-kinase (PI3K) from T-lymphocytes through its SH3 domain and to the tyrosine phosphorylated form of KHDRBS1/p70 through its SH2 domain. This interaction inhibits its tyrosine-kinase activity. Interacts with SQSTM1. Interacts with phosphorylated LIME1. Interacts with CBLB and PTPRH. Interacts with RUNX3. Forms a signaling complex with EPHA1,PTK2B AND PI3-KINASE; upon activation by EFNA1 which may regulate T-lymphocyte migration. Associates with ZAP70 and RHOH; these interactions allow LCK-mediated RHOH and CD3 subunit phosphorylation in the presence of functional ZAP70. Interacts with UNC119; this interaction plays a crucial role in activation of LCK. Interacts with CEACAM1 (via cytoplasmic domain); mediates CEACAM1 phosphorylation resulting in PTPN6 recruitment that dephosphorylates TCR stimulation-induced CD247 and ZAP70 (PubMed:18424730). Interacts with CD160.',
        'Tyrosine-protein kinase Lck',
        'LCK',
        'https://cdn.rcsb.org/images/rutgers/bh/1bhf/1bhf.pdb-250.jpg',
        '{{2004,1},{2008,1},{2009,3},{2010,2},{2011,1},{2012,2},{2013,65},{2014,61},{2015,56},{2016,71},{2017,5}}'
    ),
    (
        'P07949',
        'Tyr protein kinase family',
        18,
        1649,
        'Also known as RET_HUMAN,RET,CDHF12,CDHR16,PTC,RET51. Receptor tyrosine-protein kinase involved in numerous cellular mechanisms including cell proliferation,neuronal navigation,cell migration,and cell differentiation upon binding with glial cell derived neurotrophic factor family ligands. Phosphorylates PTK2/FAK1. Regulates both cell death/survival balance and positional information. Required for the molecular mechanisms orchestration during intestine organogenesis; involved in the development of enteric nervous system and renal organogenesis during embryonic life,and promotes the formation of Peyer''s patch-like structures,a major component of the gut-associated lymphoid tissue. Modulates cell adhesion via its cleavage by caspase in sympathetic neurons and mediates cell migration in an integrin (e.g. ITGB1 and ITGB3)-dependent manner. Involved in the development of the neural crest. Active in the absence of ligand,triggering apoptosis through a mechanism that requires receptor intracellular caspase cleavage. Acts as a dependence receptor; in the presence of the ligand GDNF in somatotrophs (within pituitary),promotes survival and down regulates growth hormone (GH) production,but triggers apoptosis in absence of GDNF. Regulates nociceptor survival and size. Triggers the differentiation of rapidly adapting (RA) mechanoreceptors. Mediator of several diseases such as neuroendocrine cancers; these diseases are characterized by aberrant integrins-regulated cell migration. Mediates,through interaction with GDF15-receptor GFRAL,GDF15-induced cell-signaling in the brainstem which induces inhibition of food-intake. Activates MAPK- and AKT-signaling pathways (PubMed:28846097,PubMed:28953886,PubMed:28846099). Isoform 1 in complex with GFRAL induces higher activation of MAPK-signaling pathway than isoform 2 in complex with GFRAL (PubMed:28846099). Phosphorylated form interacts with the PBT domain of DOK2,DOK4 and DOK5 (By similarity). The phosphorylated form interacts with PLCG1 and GRB7 (By similarity). Interacts (not phosphorylated) with PTK2/FAK1 (via FERM domain) (PubMed:21454698). Extracellular cell-membrane anchored RET cadherin fragments form complex in neurons with reduced trophic status,preferentially at the contact sites between somas (PubMed:21357690). Interacts with AIP in the pituitary gland; this interaction prevents the formation of the AIP-survivin complex (PubMed:19366855). Binds to ARTN (By similarity). Interacts (inactive) with CBLC and CD2AP; dissociates upon activation by GDNF which increases CBLC:CD2AP interaction (PubMed:18753381). Interacts (via the extracellular domain) with GFRAL (via the extracellular domain); the interaction mediates cellular signaling upon interaction of GFRAL with its ligand GDF15 (PubMed:28953886,PubMed:28846097,PubMed:28846099). Interaction with GFRAL requires previous GDF15-binding to GFRAL (PubMed:28846097,PubMed:28846099).',
        'Proto-oncogene tyrosine-protein kinase receptor Ret',
        'RET',
        'https://cdn.rcsb.org/images/rutgers/xp/1xpd/1xpd.pdb-250.jpg',
        '{{2004,1},{2008,1},{2009,3},{2010,2},{2011,1},{2012,2},{2013,65},{2014,61},{2015,56},{2016,71},{2017,5}}'
    ),
    (
        'Q15303',
        'Tyr protein kinase family',
        10,
        1934,
        'Also known as ERBB4_HUMAN,ERBB4,HER4. Tyrosine-protein kinase that plays an essential role as cell surface receptor for neuregulins and EGF family members and regulates development of the heart,the central nervous system and the mammary gland,gene transcription,cell proliferation,differentiation,migration and apoptosis. Required for normal cardiac muscle differentiation during embryonic development,and for postnatal cardiomyocyte proliferation. Required for normal development of the embryonic central nervous system,especially for normal neural crest cell migration and normal axon guidance. Required for mammary gland differentiation,induction of milk proteins and lactation. Acts as cell-surface receptor for the neuregulins NRG1,NRG2,NRG3 and NRG4 and the EGF family members BTC,EREG and HBEGF. Ligand binding triggers receptor dimerization and autophosphorylation at specific tyrosine residues that then serve as binding sites for scaffold proteins and effectors. Ligand specificity and signaling is modulated by alternative splicing,proteolytic processing,and by the formation of heterodimers with other ERBB family members,thereby creating multiple combinations of intracellular phosphotyrosines that trigger ligand- and context-specific cellular responses. Mediates phosphorylation of SHC1 and activation of the MAP kinases MAPK1/ERK2 and MAPK3/ERK1. Isoform JM-A CYT-1 and isoform JM-B CYT-1 phosphorylate PIK3R1,leading to the activation of phosphatidylinositol 3-kinase and AKT1 and protect cells against apoptosis. Isoform JM-A CYT-1 and isoform JM-B CYT-1 mediate reorganization of the actin cytoskeleton and promote cell migration in response to NRG1. Isoform JM-A CYT-2 and isoform JM-B CYT-2 lack the phosphotyrosine that mediates interaction with PIK3R1,and hence do not phosphorylate PIK3R1,do not protect cells against apoptosis,and do not promote reorganization of the actin cytoskeleton and cell migration. Proteolytic processing of isoform JM-A CYT-1 and isoform JM-A CYT-2 gives rise to the corresponding soluble intracellular domains (4ICD) that translocate to the nucleus,promote nuclear import of STAT5A,activation of STAT5A,mammary epithelium differentiation,cell proliferation and activation of gene expression. The ERBB4 soluble intracellular domains (4ICD) colocalize with STAT5A at the CSN2 promoter to regulate transcription of milk proteins during lactation. The ERBB4 soluble intracellular domains can also translocate to mitochondria and promote apoptosis. Monomer in the absence of bound ligand. Homodimer or heterodimer with another ERBB family member upon ligand binding,thus forming heterotetramers. Interacts with EGFR and ERBB2. Interacts with CBFA2T3 (By similarity). Interacts with DLG2 (via its PDZ domain),DLG3 (via its PDZ domain),DLG4 (via its PDZ domain) and SNTB2 (via its PDZ domain). Interacts with MUC1. Interacts (via its PPxy motifs) with WWOX. Interacts (via the PPxY motif 3 of isoform JM-A CYT-2) with YAP1 (via the WW domain 1 of isoform 1). Interacts (isoform JM-A CYT-1 and isoform JM-B CYT-1) with WWP1. Interacts (via its intracellular domain) with TRIM28. Interacts (via the intracellular domains of both CYT-1 and CYT-2 isoforms) with KAP1; the interaction does not phosphorylate KAP1 but represses ERBB4-mediated transcriptional activity. Interacts with PRPU,DDX23,MATR3,RBM15,ILF3,KAP1,U5S1,U2SURP,ITCH,HNRNPU,AP2A1,NULC,LEO1,WWP2,IGHG1,HXK1,GRB7 AND ARS2. Interacts (phosphorylated isoform JM-A CYT-1 and isoform JM-B CYT-1) with PIK3R1. Interacts with SHC1. Interacts with GRB2. Interacts (soluble intracellular domain) with STAT5A. Interacts (soluble intracellular domain) with BCL2. Interacts (phosphorylated) with STAT1.',
        'Receptor tyrosine-protein kinase erbB-4',
        'ERBB4',
        'https://cdn.rcsb.org/images/rutgers/ah/2ahx/2ahx.pdb-250.jpg',
        '{{2004,1},{2008,1},{2009,3},{2010,2},{2011,1},{2012,2},{2013,65},{2014,61},{2015,56},{2016,71},{2017,5}}'
    ),
    (
        'P21802',
        'Tyr protein kinase family',
        40,
        2318,
        'Also known as FGFR2_HUMAN,FGFR2,BEK,KGFR,KSAM. Tyrosine-protein kinase that acts as cell-surface receptor for fibroblast growth factors and plays an essential role in the regulation of cell proliferation,differentiation,migration and apoptosis,and in the regulation of embryonic development. Required for normal embryonic patterning,trophoblast function,limb bud development,lung morphogenesis,osteogenesis and skin development. Plays an essential role in the regulation of osteoblast differentiation,proliferation and apoptosis,and is required for normal skeleton development. Promotes cell proliferation in keratinocytes and immature osteoblasts,but promotes apoptosis in differentiated osteoblasts. Phosphorylates PLCG1,FRS2 and PAK4. Ligand binding leads to the activation of several signaling cascades. Activation of PLCG1 leads to the production of the cellular signaling molecules diacylglycerol and inositol 1,4,5-trisphosphate. Phosphorylation of FRS2 triggers recruitment of GRB2,GAB1,PIK3R1 and SOS1,and mediates activation of RAS,MAPK1/ERK2,MAPK3/ERK1 and the MAP kinase signaling pathway,as well as of the AKT1 signaling pathway. FGFR2 signaling is down-regulated by ubiquitination,internalization and degradation. Mutations that lead to constitutive kinase activation or impair normal FGFR2 maturation,internalization and degradation lead to aberrant signaling. Over-expressed FGFR2 promotes activation of STAT1. Monomer. Homodimer after ligand binding. Interacts predominantly with FGF1 and FGF2,but can also interact with FGF3,FGF4,FGF6,FGF7,FGF8,FGF9,FGF10,FGF17,FGF18 and FGF22 (in vitro). Ligand specificity is determined by tissue-specific expression of isoforms,and differences in the third Ig-like domain are crucial for ligand specificity. Isoform 1 has high affinity for FGF1 and FGF2,but low affinity for FGF7. Isoform 3 has high affinity for FGF1 and FGF7,and has much higher affinity for FGF7 than isoform 1 (in vitro). Affinity for fibroblast growth factors (FGFs) is increased by heparan sulfate glycosaminoglycans that function as coreceptors. Likewise,KLB increases the affinity for FGF19 and FGF21. Interacts with PLCG1,GRB2 and PAK4. Interacts with FLRT2.',
        'Fibroblast growth factor receptor 2',
        'FGFR2',
        'https://cdn.rcsb.org/images/rutgers/dj/1djs/1djs.pdb-250.jpg',
        '{{2004,1},{2008,1},{2009,3},{2010,2},{2011,1},{2012,2},{2013,65},{2014,61},{2015,56},{2016,71},{2017,5}}'
    ),
    (
        'P23458',
        'Tyr protein kinase family',
        37,
        5478,
        'Also known as JAK1_HUMAN,JAK1,JAK1A,JAK1B. Tyrosine kinase of the non-receptor type,involved in the IFN-alpha/beta/gamma signal pathway (PubMed:7615558). Kinase partner for the interleukin (IL)-2 receptor (PubMed:11909529) as well as interleukin (IL)-10 receptor (PubMed:12133952). Interacts with IL31RA (PubMed:15194700). Interacts with IFNAR2 (PubMed:7759950). Interacts with IFNGR1 (PubMed:7615558). Interacts with JAKMIP1 (PubMed:15277531). Interacts with SHB (PubMed:12200137). Interacts (via N-terminus) with IL2RB and IL10RA (via its cytoplasmic domain) (PubMed:12133952). Interacts with FER.',
        'Tyrosine-protein kinase JAK1',
        'JAK1',
        'https://cdn.rcsb.org/images/rutgers/ey/3eyg/3eyg.pdb-250.jpg',
        '{{2004,1},{2008,1},{2009,3},{2010,2},{2011,1},{2012,2},{2013,65},{2014,61},{2015,56},{2016,71},{2017,5}}'
    ),
    (
        'P36888',
        'Tyr protein kinase family',
        7,
        4055,
        'Also known as FLT3_HUMAN,FLT3,CD135,FLK2,STK1. Tyrosine-protein kinase that acts as cell-surface receptor for the cytokine FLT3LG and regulates differentiation,proliferation and survival of hematopoietic progenitor cells and of dendritic cells. Promotes phosphorylation of SHC1 and AKT1,and activation of the downstream effector MTOR. Promotes activation of RAS signaling and phosphorylation of downstream kinases,including MAPK1/ERK2 and/or MAPK3/ERK1. Promotes phosphorylation of FES,FER,PTPN6/SHP,PTPN11/SHP-2,PLCG1,and STAT5A and/or STAT5B. Activation of wild-type FLT3 causes only marginal activation of STAT5A or STAT5B. Mutations that cause constitutive kinase activity promote cell proliferation and resistance to apoptosis via the activation of multiple signaling pathways. Monomer in the absence of bound FLT3LG. Homodimer in the presence of bound FLT3LG. Interacts with FIZ1 following ligand activation (By similarity). Interacts with FES,FER,LYN,FGR,HCK,SRC and GRB2. Interacts with PTPRJ/DEP-1 and PTPN11/SHP2. Interacts with RNF115 and RNF126.',
        'Receptor-type tyrosine-protein kinase FLT3',
        'FLT3',
        'https://cdn.rcsb.org/images/rutgers/rj/1rjb/1rjb.pdb-250.jpg',
        '{{2004,1},{2008,1},{2009,3},{2010,2},{2011,1},{2012,2},{2013,65},{2014,61},{2015,56},{2016,71},{2017,5}}'
    );

INSERT into features values
    (
        'P17948',
        true,
        true
    ),
    (
        'P00533',
        true,
        false
  ),
    (
        'P04049',
        false,
        true
    ),
    (
        'P06213',
        false,
        false
    ),
    (
        'P06241',
        true,
        true
    ),
    (
        'P08069',
        true,
        false
    ),
    (
        'Q08881',
        true,
        true
    ),
    (
        'Q15375',
        true,
        true
    ),
    (
        'P10721',
        true,
        true
    ),
    (
        'P04626',
        false,
        true
    ),
    (
        'P07948',
        false,
        false
    ),
    (
        'P08581',
        false,
        true
    ),
    (
        'P29317',
        true,
        true
    ),
    (
        'P29320',
        true,
        true
    ),
    (
        'Q02763',
        true,
        true
    ),
    (
        'P54756',
        false,
        true
    ),
    (
        'Q9UM73',
        true,
        true
    ),
    (
        'P35968',
        false,
        false
    ),
    (
        'P36507',
        false,
        false
    ),
    (
        'P06239',
        true,
        true
    ),
    (
        'P07949',
        false,
        true
    ),
    (
        'Q15303',
        true,
        true
    ),
    (
        'P21802',
        true,
        false
    ),
    (
        'P23458',
        false,
        true
    ),
    (
        'P36888',
        true,
        true
    );
