while true; do
    python train.py config/dropout-kinds/block-10.py --wandb_log=True
    python train.py config/dropout-kinds/block-10.py --wandb_log=True

    python train.py config/dropout-kinds/block-32.py --wandb_log=True --dropout_kind=block-16
    python train.py config/dropout-kinds/block-32.py --wandb_log=True --dropout_kind=block-16

    python train.py config/dropout-kinds/block-32.py --wandb_log=True --dropout_kind=block-32
    python train.py config/dropout-kinds/block-32.py --wandb_log=True --dropout_kind=block-32

    python train.py config/dropout-kinds/block-32.py --wandb_log=True --dropout_kind=block-64
    python train.py config/dropout-kinds/block-32.py --wandb_log=True --dropout_kind=block-64

    python train.py config/dropout-kinds/head.py --wandb_log=True
    python train.py config/dropout-kinds/head.py --wandb_log=True

    python train.py config/dropout-kinds/head.py --wandb_log=True --dropout=0.225
    python train.py config/dropout-kinds/head.py --wandb_log=True --dropout=0.275

    python train.py config/dropout-kinds/layer.py --wandb_log=True
    python train.py config/dropout-kinds/layer.py --wandb_log=True

    python train.py config/dropout-kinds/normal.py --wandb_log=True
    python train.py config/dropout-kinds/normal.py --wandb_log=True

    python train.py config/dropout-kinds/token.py --wandb_log=True
    python train.py config/dropout-kinds/token.py --wandb_log=True

    python train.py config/dropout-kinds/token.py --wandb_log=True --dropout=0.225
    python train.py config/dropout-kinds/token.py --wandb_log=True --dropout=0.275

    python train.py config/dropout-kinds/layer.py --wandb_log=True --dropout_kind=head_and_layer
    python train.py config/dropout-kinds/layer.py --wandb_log=True --dropout_kind=head_and_layer

    python train.py config/dropout-kinds/layer.py --wandb_log=True --dropout_kind=head_and_layer --dropout=0.2
    python train.py config/dropout-kinds/layer.py --wandb_log=True --dropout_kind=head_and_layer

    python train.py config/dropout-kinds/layer.py --wandb_log=True --dropout_kind=block-32_and_layer
    python train.py config/dropout-kinds/layer.py --wandb_log=True --dropout_kind=block-16_and_layer
    python train.py config/dropout-kinds/layer.py --wandb_log=True --dropout_kind=block-50_and_layer
done
