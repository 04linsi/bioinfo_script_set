#sh make_cnvkit.sh /home/test01/data/project/cnvkit_test/step_test3/test.fq

infile=$1
indir=`dirname $1`
pre=`basename $1 .fq`;pre=`basename $pre .fastq`
metrics=$indir'/unaligned_markilluminaadapters_metrics.txt'
unalign_bam=$indir'/'$pre'.unaligned.bam'
unalign_mark=$indir'/'$pre'.unaligned_markilluminaadapters.bam'
ubam2fq=$indir'/'$pre'.ubam2fq.fq'
sam=$indir'/'$pre'.sam'
mergebam=$indir'/'$pre'.MergeBamAlignment.bam'
dupbam=$indir'/'$pre'.DuplicateMarked.bam'
dupsortbam=$indir'/'$pre'.DuplicateMarked.sorted.bam'

make -f cnvkit_pipeline_make \
infile=$infile indir=$indir pre=$pre metrics=$metrics unalign_bam=$unalign_bam \
unalign_mark=$unalign_mark ubam2fq=$ubam2fq sam=$sam mergebam=$mergebam dupbam=$dupbam dupsortbam=$dupsortbam \
all
