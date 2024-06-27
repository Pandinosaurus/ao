# baseline
python eval_combo.py --coco_root_dir datasets/coco2017 --coco_slice_name val2017 --sam_checkpoint_base_path checkpoints --sam_model_type vit_h --point_sampling_cache_dir tmp/sam_coco_mask_center_cache --mask_debug_out_dir tmp/sam_eval_masks_out --batch_size 32 --num_workers 32 --use_compile max-autotune --use_half bfloat16 --device cuda --print_header True
## int8 dynamic quant
#python eval_combo.py --coco_root_dir datasets/coco2017 --coco_slice_name val2017 --sam_checkpoint_base_path checkpoints --sam_model_type vit_h --point_sampling_cache_dir tmp/sam_coco_mask_center_cache --mask_debug_out_dir tmp/sam_eval_masks_out --batch_size 32 --num_workers 32 --use_compile max-autotune --use_half bfloat16 --device cuda --print_header True --compress dynamic_quant
# 2:4 sparsity
#python eval_combo.py --coco_root_dir datasets/coco2017 --coco_slice_name val2017 --sam_checkpoint_base_path checkpoints --sam_model_type vit_h --point_sampling_cache_dir tmp/sam_coco_mask_center_cache --mask_debug_out_dir tmp/sam_eval_masks_out --batch_size 32 --num_workers 32 --use_compile max-autotune --use_half bfloat16 --device cuda --print_header True --compress dynamic_quant
# int8 dynamic quant + 2:4 sparsity
#python eval_combo.py --coco_root_dir datasets/coco2017 --coco_slice_name val2017 --sam_checkpoint_base_path checkpoints --sam_model_type vit_h --point_sampling_cache_dir tmp/sam_coco_mask_center_cache --mask_debug_out_dir tmp/sam_eval_masks_out --batch_size 32 --num_workers 32 --use_compile max-autotune --use_half bfloat16 --device cuda --print_header true --compress int8_dynamic_quant_sparse

