<?php

class PreviewProvider
{
    private $con;
    private $userName;

    public function __construct($con, $userName)
    {
        $this->con = $con;
        $this->userName = $userName;
    }

    public function createPreviewVideo($entity)
    {
        if ($entity == null) {
            $entity = $this->getRandomEntity();
        }

        $id = $entity->getId();
        $name = $entity->getName();
        $preview = $entity->getPreview();
        $thumbnail = $entity->getThumbnail();

        // TODO - Add subtitle

        return "<div class='previewContainer'>
                 <img src='$thumbnail' class='previewImage' hidden>
                    <video autoplay muted class='previewVideo' onended='previewEnded()'>
                        <source src='$preview' type='video/mp4'>
                    </video>

                    <div class='previewOverlay'> 
                        <div class='mainDetails'>
                             <h3> $name </h3>

                            <div class='buttons'>
                                <button> <i class='fas fa-play'></i> Play </button>
                                <button onClick='volumeToggle(this)'> <i class='fas fa-volume-mute'></i> </button>
                            </div>
                        </div>
                    <div/>
                </div>";
    }


    // <i class="fas fa-volume-up"></i>

    private function getRandomEntity()
    {
        $query = $this->con->prepare("SELECT * FROM entities ORDER BY RAND() LIMIT 1");
        $query->execute();
        $row = $query->fetch(PDO::FETCH_ASSOC);

        return new Entity($this->con, $row);
    }
}