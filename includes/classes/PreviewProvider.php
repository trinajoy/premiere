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

        $videoId  = VideoProvider::getEntityVideoForUser($this->con, $id, $this->userName);
        $video = new Video($this->con, $videoId);

        $isInProgress = $video->isInProgress($this->userName);
        $playButtonText = $isInProgress ? 'Continue Watching' : 'Play';


        $seasonEpisode = $video->getSeasonAndEpisode();
        $subHeading = $video->isMovie() ? "" : "<h4> $seasonEpisode </h4>";

        return "<div class='previewContainer'>
                 <img src='$thumbnail' class='previewImage' hidden>
                    <video autoplay muted class='previewVideo' onended='previewEnded()'>
                        <source src='$preview' type='video/mp4'>
                    </video>

                    <div class='previewOverlay'> 
                        <div class='mainDetails'>
                             <h3> $name </h3>
                                $subHeading
                            <div class='buttons'>
                                <button onclick='watchVideo($videoId)'> <i class='fas fa-play'></i> $playButtonText </button>
                                <button onClick='volumeToggle(this)'> <i class='fas fa-volume-mute'></i> </button>
                            </div>
                        </div>
                    </div>
                </div>";
    }

    public function createEntityPreviewSqaure($entity)
    {
        $id = $entity->getId();
        $thumbnail = $entity->getThumbnail();
        $name = $entity->getName();

        return "<a href='entity.php?id=$id'>
                    <div class='previewContainer small'>
                        <img src='$thumbnail' title='$name'> 
                    </div>
                </a>";
    }


    private function getRandomEntity()
    {
        $entity = EntityProvider::getEntities($this->con, null, 1);
        return $entity[0];
    }
}