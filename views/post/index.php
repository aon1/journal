<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\ListView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\PostSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Posts';
$this->params['breadcrumbs'][] = $this->title;

?>
<div class="post-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Post', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

<div class="container">
    <div id="blog" class="row"> 
<!--         <div class="col-sm-2 paddingTop20">
            <div><h2 class="add">Place for your add!</h2></div>
        </div>
 -->
    <?= ListView::widget([
        'dataProvider' => $dataProvider,
        'itemOptions' => ['class' => 'item'],
        'itemView' => function ($model) {
            return '
                <div class="col-md-12 blogShort">
                    <h1>' . $model->title . '</h1>
                    <img src="uploads/'. $model->avatar . '" alt="post img" class="pull-left img-responsive thumb margin10 img-thumbnail" width="100px">
                    <em>' . $model->author . ' on ' . Yii::$app->formatter->asDatetime($model->created_at) . '</em>                
                    <article><br><p>' . $model->body . '</p></article>
                    <a class="btn btn-blog pull-right marginBottom10" 
                    href="' . \Yii::$app->urlManager->createUrl(['post/view','id'=>$model->post_id]) . '">Read More</a> 
                </div>';
        },
    ]) ?>                               
        <div class="col-md-12 gap10"></div>
    </div>
</div>
