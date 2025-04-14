<?php

$page = "action";

if (isset($_GET['page'])) {
    $page = $_GET['page'];
    switch ($page) {
        case "action":
            $page = "action";
            break;
        case "adventure":
            $page = "adventure";
            break;
        case "demon":
            $page = "demon";
            break;
        case "game":
            $page = "game";
            break;
        case "sports":
            $page = "sports";
            break;
        case "thriller":
            $page = "thriller";
            break;
        default:
        header("Location: ?page=action");
        break;
    }
} else {
    header("Location: ?page=action");
}

?>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AnimeTV</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="icon" href="../../../images/icon.png">
    <style>
        * {
            font-family: 'Poppins', sans-serif;
            padding: 0;
            margin: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        .navbar {
            background-color: #2a2f36;
            color: white;
            position: fixed;
            width: 100%;
            z-index: 1000;
        }

        .mainContentCard {
            width: 100%; 
            height: 300px
        }

        .mainContentImage {
            object-fit: cover; 
            width: 100%; 
            height: 100%; 
            border-radius: 4px;
        }

        .mainContentTitle {
            font-weight: normal; 
            font-size: 14px;
        }
    </style>
</head>

<body data-bs-theme="dark">
    <nav class="navbar navbar-expand-lg mx-auto">
        <div class="container-fluid p-4">
            <a class="navbar-brand" href="index.php">AnimeTV</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon "></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="?page=action">Action</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="?page=adventure">Adventure</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="?page=demon">Demon</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="?page=game">Game</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="?page=sports">Sports</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="?page=thriller">Thriller</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container-fluid pt-5">
        <div class="row">
            <div class="col-xl-8 col-lg-12" style="margin-top: 80px;">
                <div class="row">
                    <div class="col">
                        <div class="card d-flex justify-content-center rounded shadow p-4" style="width: 100%;">
                            <div class="row pt-3">
                                <div class="col-4 mb-3">
                                    <div class="dropdown w-100">
                                        <a class="btn btn-secondary dropdown-toggle w-100" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                            Type
                                        </a>
                                        <ul class="dropdown-menu w-100">
                                            <li><a class="dropdown-item" href="#">Movie</a></li>
                                            <li><a class="dropdown-item" href="#">TV Series</a></li>
                                            <li><a class="dropdown-item" href="#">OVA</a></li>
                                            <li><a class="dropdown-item" href="#">ONA</a></li>
                                            <li><a class="dropdown-item" href="#">Special</li>
                                            <li><a class="dropdown-item" href="#">Music</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-4 mb-3">
                                    <div class="dropdown w-100">
                                        <a class="btn btn-secondary dropdown-toggle w-100" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                            Language
                                        </a>
                                        <ul class="dropdown-menu w-100">
                                            <li><a class="dropdown-item" href="#">Subbed</a></li>
                                            <li><a class="dropdown-item" href="#">Dubbed</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-4 mb-3">
                                    <div class="dropdown w-100">
                                        <a class="btn btn-secondary dropdown-toggle w-100" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                            Year
                                        </a>
                                        <ul class="dropdown-menu w-100">
                                            <li><a class="dropdown-item" href="#">2025 - 2021</a></li>
                                            <li><a class="dropdown-item" href="#">2020 - 2016</a></li>
                                            <li><a class="dropdown-item" href="#">2015 - 2011</a></li>
                                            <li><a class="dropdown-item" href="#">2010 - 2006</a></li>
                                            <li><a class="dropdown-item" href="#">2005 - 2001</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-4 mb-3">
                                    <div class="dropdown w-100">
                                        <a class="btn btn-secondary dropdown-toggle w-100" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                            Status
                                        </a>
                                        <ul class="dropdown-menu w-100">
                                            <li><a class="dropdown-item" href="#">Finished Airing</a></li>
                                            <li><a class="dropdown-item" href="#">Currently Airing</a></li>
                                            <li><a class="dropdown-item" href="#">Not yet aired</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-4 mb-3">
                                    <div class="dropdown w-100">
                                        <a class="btn btn-secondary dropdown-toggle w-100" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                            Sort
                                        </a>
                                        <ul class="dropdown-menu w-100">
                                            <li><a class="dropdown-item" href="#">Recently Updated</a></li>
                                            <li><a class="dropdown-item" href="#">Recently Added</a></li>
                                            <li><a class="dropdown-item" href="#">Name A-Z</a></li>
                                            <li><a class="dropdown-item" href="#">Most Watched</a></li>
                                            <li><a class="dropdown-item" href="#">Score</a></li>
                                            <li><a class="dropdown-item" href="#">Released Date</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-4 mb-3">
                                    <button type="button" class="btn btn-primary w-100"><i class="fa-solid fa-filter"></i>     Filter</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row p-3">
                    <?php include("shared/" . $page . ".php"); ?>
                </div>
            </div>
            <div class="col-xl-4 col-lg-12" style="margin-top: 80px;">
                <div class="card rounded shadow p-3" style="height: auto; width: 100%; overflow-x: hidden;">
                    <div class="row p-1">
                        <div class="col-4 d-flex align-items-center">
                            <div class="h5 text-center">
                                Top Anime
                            </div>
                        </div>
                        <div class="col-8 d-flex justify-content-end align-items-center">
                            <div class="h6 text-center">
                                Today
                            </div>
                        </div>
                    </div>
                    <div class="container p-0">
                        <?php include("shared/topAnime.php") ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>

</html>