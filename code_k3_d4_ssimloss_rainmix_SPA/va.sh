
for i in $(seq 3000 3000 150000)
do
    echo "dealing with ${i}:";
    python ./code_k3_d4_ssimloss_rainmix_SPA/validation.py \
    --load_name "./models_k3_d4_ssimloss_rainmix_SPA/KPN_rainy_image_iter${i}_bs16.pth" \
    --save_name "./results_k3_d4_ssimloss_rainmix_SPA" \
    --baseroot "./rainy_image_dataset/SPA/test" ;
done

