python ./code_k3_d4_ssimloss_rainmix_SPA/train.py \
--baseroot "rainy_image_dataset/SPA/Training" \
--load_name "./models_k3_d4_ssimloss_rainmix_SPA/KPN_rainy_image_iter78000_bs16.pth" \
--multi_gpu "true"  \
--save_path "./models_k3_d4_ssimloss_rainmix_SPA_78000s" \
--sample_path "./samples" \
--save_mode 'iter' \
--save_by_epoch 1 \
--save_by_iter 3000 \
--lr_g 0.00004 \
--b1 0.5 \
--b2 0.999 \
--weight_decay 0.0 \
--train_batch_size 16 \
--epochs 2 \
--lr_decrease_epoch 50 \
--num_workers 1 \
--crop_size 256 \
--no_gpu "false" \
--rainaug "true" \


for i in $(seq 3000 3000 78000)
do
    echo "dealing with ${i}:";
    python ./code_k3_d4_ssimloss_rainmix_SPA/validation.py \
    --load_name "./models_k3_d4_ssimloss_rainmix_SPA_78000s/KPN_rainy_image_iter${i}_bs16.pth" \
    --save_name "./results_k3_d4_ssimloss_rainmix_SPA" \
    --baseroot "./rainy_image_dataset/SPA/test" ;
done

