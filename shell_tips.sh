# batch del qsub jobs
num=???;for i in `seq 1 9`;do qdel ${num};let num=$num+1;done
