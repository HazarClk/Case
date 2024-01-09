<?php include("header.php") ?>
<div class="main mt-5 mb-5">

    <div class="col-md-12 mt-3 mb-3">
        <div class="container">
            <?php if ($this->session->flashdata("createSuccess")) { ?>
                <div class="alert alert-success">
                    <h4 class="alert-title text-bold">İşlem Başarılı !</h4>
                    <p class="alert-text mt-2">Görevler başarıyla içe aktarıldı.</p>
                </div>
            <?php } ?>
            <h2 align="center">Görevleri İçe Aktar</h2>
            <p class="text-muted" align="center"><small>Farklı bir provider url'sini girerek görevleri içeri aktarabilirsiniz.</small></p>
            <form action="<?= base_url("home/createData") ?>" method="POST">
                <div class="form-group">
                    <label class="col-form-label">API Url</label>
                    <input type="text" class="form-control mb-2" name="api_url">

                    <label class="col-form-label">Zaman'ın karşılık key'i</label>
                    <input type="text" class="form-control mb-2" name="key_time">

                    <label class="col-form-label">Name karşılık key'i</label>
                    <input type="text" class="form-control mb-2" name="key_name">

                    <label class="col-form-label">Level'in karşılık key'i</label>
                    <input type="text" class="form-control mb-2" name="key_level">
                    <button class="form-control btn btn-success mt-4">Gönder</button>
                </div>
            </form>
        </div>

    </div>
    <div class="container">
        <h2 align="center" class="mb-4 mt-5">TO DO LIST</h2>
        <div class="row">
            <?php foreach ($list as $l) { ?>
                <div class="col-md-3 mt-2 mb-2">
                    <div class="card" style="border-radius: 8px !important;">
                        <div class="card-body">
                            <h5 class="card-title text-bold"><?= $l->name ?></h5>
                            <p class="card-text" style="font-size: 14px !important;">Süre: <?= $l->time ?></p>
                            <p class="card-text" style="font-size: 14px !important;">Zorluk: <?= $l->level ?></p>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</div>
<?php include("footer.php"); ?>

