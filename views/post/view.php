<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\grid\GridView;
use yii\widgets\ActiveForm;


/* @var $this yii\web\View */
/* @var $model app\models\Post */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Posts', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="post-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            // 'post_id',
            [
                'attribute' => 'avatar',
                'label' => 'Avatar',
                'value'=> 'uploads/' . $model->avatar,
                'format' => ['image',['width'=>'100','height'=>'100']],
            ],
            'author',
            'title',
            'body',
            'created_at',
            // 'updated_at',
        ],
    ]) ?>

    <h1><?= Html::encode('Comments') ?></h1>

    <?= GridView::widget([
        'dataProvider' => $commentDataProvider,
        'tableOptions' => ['class' => 'table table-striped'],
        'columns' => [
            'author',
            'text',
            'created_at',
        ]
    ]) ?>

    <h1><?= Html::encode('Leave a comment') ?></h1>

    <div class="comment-form">

        <?php $form = ActiveForm::begin(); ?>

        <?= $form->field($comment, 'author')->textInput(['maxlength' => true]) ?>

        <?= $form->field($comment, 'text')->textArea(['rows' => '10']) ?>        

        <div class="form-group">
            <?= Html::submitButton($comment->isNewRecord ? 'Create' : 'Update', ['class' => $comment->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
        </div>

        <?php ActiveForm::end(); ?>

    </div>

</div>
