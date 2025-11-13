**input Files
           seed = -1
        seqfile = algAllproteins_52copepodes.clean.phy
       treefile = 52copepods.rootedFossils.tree
        outfile = run_52species_fossils.log.txt
       mcmcfile = run_52species.mcmc.out

**screen output
          noisy = 9 * 0,1,2,3,9: how much rubbish on the screen 

**input Data
          ndata = 1
	seqtype = 2 * 0: nucleotides; 1:codons; 2:AAs; 3:codons-->AAs
	usedata = 2 * 0: no data; 1:seq like; 2:use in in.BV; 3:out.BV
      cleandata = 0 * remove sites with ambiguity data (1:yes, 0:no)

**models
          clock = 2 * 0:no clock; 1: global clock; 2: local clock; 3: CombinedAnalysis(correlated rates)
*	RootAge = '<1.0' * safe constraint on root age, used if no fossil for root.

	  model = 0 * models for AAs or codon-translated AAs:
                       * 0:poisson, 1:proportional, 2:Empirical, 3:Empirical+F

	  alpha = 0 * alpha for gamma rates at sites
	  ncatG = 5 * No. categories in discrete gamma (dG of NSsites models)

	BDparas = .01 .01 0.1 * birth, death, sampling
    alpha_gamma = 1 1 * gamma prior for alpha
    kappa_gamma = 6 2 * gamma prior for kappa

    rgene_gamma = 2 2000 1 * gamma prior for (overall) rate for genes
   sigma2_gamma = 1 10 1 * gamma prior for sigma^2 (for clock=2 or 3)

**settings
	   print = 1 * 0: no mcmc sample; 1: everything except branch rates 2: everything
	  burnin = 100000
	sampfreq = 500
	 nsample = 200000    
