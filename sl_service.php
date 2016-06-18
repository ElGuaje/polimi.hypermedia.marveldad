<?php
include 'include/header.php';
?>

<div class="container">
    <!--Title and navigation info-->
    <div class="row">
        <!--Go back links -->
        <div class="col-md-4 col-xs-12">
            <div class="side-link-wrapper pull-left">
                <a href="#"><p>< Servizio all Persona</p></a>
                <a href="#"><p>< Promozioni</p></a>
                <a href="#"><p>< Device</p></a>
            </div>
        </div>
        <!--Main title and nav links -->
        <div class="col-md-8 col-xs-12">
            <div class="row">
                <div class="col-xs-4">
                    <a href="#"><p class="text-right"><< Precedente</p></a>
                    <a href="#"><p class="text-right"><< Precedente in promo</p></a>
                </div>
                <div class="col-xs-4" style="width: auto">
                    <h1 class="text-center sl-title">SL Title</h1>
                </div>
                <div class="col-xs-4">
                    <a href="#"><p class="text-left">Successivo >></p></a>
                    <a href="#"><p class="text-left">Successivo in promo >></p></a>
                </div>
            </div>
        </div>
    </div>
    <!--SL internal navigation -->
    <div class="row">
        <div class="col-xs-12">
            <div class="sl-navigation">
                <ul class="nav nav-tabs">
                    <li role="presentation" class="active"><a data-toggle="tab" href="#tab-description">Descrizione</a></li>
                    <li role="presentation"><a data-toggle="tab" href="#tab-activ">Attivazione e regolamento</a></li>
                    <li role="presentation"><a data-toggle="tab" href="#tab-faq">FAQ</a></li>
                    <li role="presentation"><a data-toggle="tab" href="#tab-device">Dispositivi</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div class="tab-content">
        <div class="tab-pane active" id="tab-description">
            <div class="container-fluid">
                <!--Description row-->
                <div class="row" id="sl-des-row">
                    <div class="row main-des-row">
                        <div class="col-xs-12 col-md-4">
                            <img class="img-responsive" src="http://placehold.it/350x150">
                        </div>
                        <div class="col-xs-12 col-md-8">
                            <h4>Come funziona</h4>
                            <p>Cos’è Lorem Ipsum? Lorem Ipsum è un testo segnaposto utilizzato nel settore della tipografia e della
                                stampa. Lorem Ipsum è considerato il testo segnaposto standard sin dal sedicesimo secolo, quando un
                                anonimo tipografo prese una cassetta di caratteri e li assemblò per preparare un testo campione. È
                                sopravvissuto non solo a più di cinque secoli, ma anche al passaggio alla videoimpaginazione,
                                pervenendoci sostanzialmente inalterato. Fu reso popolare, negli anni ’60, con la diffusione dei
                                fogli di caratteri trasferibili “Letraset”, che contenevano passaggi del Lorem Ipsum, e più
                                recentemente da software di impaginazione come Aldus PageMaker, che includeva versioni del Lorem
                                Ipsum.</p>
                        </div>
                    </div>
                    <!--Divider-->
                    <div class="row">
                        <div class="col-xs-12">
                            <hr>
                        </div>
                    </div>
                    <!--Additional content row-->
                    <div class="row">
                        <div class="col-xs-12">
                            <p>Additional content</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tab-pane" id="tab-activ">
            <div class="container-fluid">
                <!--Activation e rules row-->
                <div class="row" id="sl-act-row">
                    <div class="col-xs-12">
                        <h3>Città abilitate</h3>
                        <ul class="list-group">
                            <li class="list-group-item">Alghero</li>
                            <li class="list-group-item">Brescia</li>
                            <li class="list-group-item">Grosetto</li>
                            <li class="list-group-item">Livorno</li>
                            <li class="list-group-item">Mantova</li>
                            <li class="list-group-item">Oristano</li>
                            <li class="list-group-item">Pisa</li>
                            <li class="list-group-item">Vicenza</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="tab-pane" id="tab-faq">
            <div class="container-fluid">
                <!--FAQ row-->
                <div class="row" id="sl-faq-row">
                    <div class="panel panel-default">
                        <div class="panel-heading">Cosa trovo nella vetrina servizi trasporti?</div>
                        <div class="panel-body">
                            Nella vetrina servizi trasporti puoi acquistare il biglietto dell'autobus e della metro in numerose
                            città italiane e pagare con il tuo credito telefonico.
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Quanto costa acquistare un biglietto?</h3>
                        </div>
                        <div class="panel-body">
                            L'utilizzo di TIM Wallet comporta il consumo di traffico Internet, per il quale si applica il tuo piano
                            tariffario. Ti verranno inoltre addebitati il costo del biglietto più il costo dell’SMS di richiesta
                            (19,90 €cent IVA inclusa). Il costo totale verrà scalato dal tuo credito telefonico (se sei un Cliente
                            Ricaricabile) o con addebito in bolletta (se sei un Cliente con Abbonamento).
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Che tipo di biglietti è possibile acquistare?</h3>
                        </div>
                        <div class="panel-body">
                            È possibile acquistare i biglietti dei trasporti pubblici per le tratte urbane ed extraurbane in
                            numerose città italiane.
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Dove posso utilizzare il servizio?</h3>
                        </div>
                        <div class="panel-body">
                            Per acquistare un biglietto accedi alla vetrina servizi trasporti, seleziona la città desiderata, scegli
                            il biglietto elettronico e clicca “Acquista”. Riceverai un SMS di riepilogo, il biglietto sarà valido da
                            quel momento senza necessità di ulteriori convalide.
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Ecco l'elenco delle città italiane in cui è possibile utilizzare il
                                servizio:</h3>
                        </div>
                        <div class="panel-body">
                            Guarda "Attivazione e regolamento"
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tab-pane" id="tab-device">
            <div class="container-fluid">
                <!--Devices row-->
                <div class="row" id="sl-devices-row">
                    <div class="row">
                        <div class="col-xs-12">
                            <h3>Puoi usare questo servizio con:</h3>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-md-4">
                            <div class="thumbnail">
                                <img src="/hypermedia/media/product_images/APPLE_OIPHONE_SE_spacegrey_01.jpg" alt="LG">
                                <div class="caption">
                                    <h3>Apple iPhone</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
                                        Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur
                                        ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla
                                        consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget,
                                        arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu
                                        pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum
                                    </p>
                                    <p><a href="#" class="btn btn-primary" role="button">Scopri</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4">
                            <div class="thumbnail">
                                <img src="/hypermedia/media/product_images/LG_G5_titan_01_1.jpg" alt="LG">
                                <div class="caption">
                                    <h3>LG Titan 5</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
                                        Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur
                                        ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla
                                        consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget,
                                        arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu
                                        pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum
                                    </p>
                                    <p><a href="#" class="btn btn-primary" role="button">Scopri</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<?php
include 'include/footer.php';
?>

