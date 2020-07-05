
#!/bin/bash

rep=${1}

mkdir -p train/gwas_results/fixed_effects/noge/qqfiles

echo "processing sharp effect"
echo "pcs0"

Rscript processgwas4qq.R \
train/gwas_results/fixed_effects/noge/gwas_gridt9_train.noge.${rep}.pcs0.smooth.glm.linear.gz \
train/genotypes/genos_grid_d36_m0.07_s500_t9_chr1_20.rmdup.train.snps.frq.afreq \
train/gwas_results/fixed_effects/noge/qqfiles/genos_gridt9_smooth.pcs0.${rep}.txt

echo "common"
Rscript processgwas4qq.R \
train/gwas_results/fixed_effects/noge/gwas_gridt9_train.noge.${rep}.cm.smooth.glm.linear.gz \
train/genotypes/genos_grid_d36_m0.07_s500_t9_chr1_20.rmdup.train.snps.frq.afreq \
train/gwas_results/fixed_effects/noge/qqfiles/genos_gridt9_smooth.cm.${rep}.txt

echo "rare"
Rscript processgwas4qq.R \
train/gwas_results/fixed_effects/noge/gwas_gridt9_train.noge.${rep}.re.smooth.glm.linear.gz \
train/genotypes/genos_grid_d36_m0.07_s500_t9_chr1_20.rmdup.train.snps.frq.afreq \
train/gwas_results/fixed_effects/noge/qqfiles/genos_gridt9_smooth.re.${rep}.txt



echo "processing sharp effect"
echo "pcs0"
Rscript processgwas4qq.R \
train/gwas_results/fixed_effects/noge/gwas_gridt9_train.noge.${rep}.pcs0.sharp.glm.linear.gz \
train/genotypes/genos_grid_d36_m0.07_s500_t9_chr1_20.rmdup.train.snps.frq.afreq \
train/gwas_results/fixed_effects/noge/qqfiles/genos_gridt9_sharp.pcs0.${rep}.txt

echo "common"
Rscript processgwas4qq.R \
train/gwas_results/fixed_effects/noge/gwas_gridt9_train.noge.${rep}.cm.sharp.glm.linear.gz \
train/genotypes/genos_grid_d36_m0.07_s500_t9_chr1_20.rmdup.train.snps.frq.afreq \
train/gwas_results/fixed_effects/noge/qqfiles/genos_gridt9_sharp.cm.${rep}.txt

echo "rare"
Rscript processgwas4qq.R \
train/gwas_results/fixed_effects/noge/gwas_gridt9_train.noge.${rep}.re.sharp.glm.linear.gz \
train/genotypes/genos_grid_d36_m0.07_s500_t9_chr1_20.rmdup.train.snps.frq.afreq \
train/gwas_results/fixed_effects/noge/qqfiles/genos_gridt9_sharp.re.${rep}.txt
