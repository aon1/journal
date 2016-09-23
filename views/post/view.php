<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\grid\GridView;
use yii\widgets\ActiveForm;
use yii\widgets\ListView;

/* @var $this yii\web\View */
/* @var $model app\models\Post */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Posts', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="post-view">

    <div class="container">
        <div id="blog" class="row"> 
        <?= ListView::widget([
            'dataProvider' => $postDataProvider,
            'itemOptions' => ['class' => 'item'],
            'itemView' => function ($model) {
                return '
                    <div class="col-md-12 blogShort">
                        <h1>' . $model->title . '</h1>
                        <img src="uploads/'. $model->avatar . '" alt="post img" class="pull-left img-responsive thumb margin10 img-thumbnail" width="100px">
                        <em>' . $model->author . ' on ' . $model->created_at . '</em>                
                        <article><br><p>' . $model->body . '</p></article> 
                    </div>';
            },
        ]) ?>                               
            <div class="col-md-12 gap10"></div>
        </div>
    </div>
    
    <br>
    <h1><?= Html::encode('Comments') ?></h1>

        <?= ListView::widget([
            'dataProvider' => $commentDataProvider,
            'itemOptions' => ['class' => 'item'],
            'emptyText' => 'There are no comments for this post.',
            'itemView' => function ($model) {
                return '
                    <div class="media">
                    <a class="pull-left" href="#">
                        <img class="media-object" src="http://placehold.it/64x64" alt="">
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading">' . $model->author . '
                            <small>' . $model->created_at . '</small>
                        </h4>
                        ' . $model->text . '
                    </div>
                    </div>';
            },
        ]) ?>
    
    <br>
    <h1><?= Html::encode('Leave a comment') ?></h1>
    <div class="well">        
        <?php $form = ActiveForm::begin(); ?>

        <?= $form->field($comment, 'author')->textInput(['maxlength' => true]) ?>

        <?= $form->field($comment, 'text')->textArea(['rows' => '10']) ?>        

        <div class="form-group">
            <?= Html::submitButton($comment->isNewRecord ? 'Submit' : 'Update', ['class' => $comment->isNewRecord ? 'btn btn-primary' : 'btn btn-primary']) ?>
        </div>

        <?php ActiveForm::end(); ?>

    </div>

</div>
