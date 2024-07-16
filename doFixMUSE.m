function [EEG] = doFixMUSE(EEG)

    % this function corrects a Muse channel with too many artifacts by
    % replacing it with its opposite, i.e., bad TP9 is set equal to TP10, etc.
    % only does this is the % lost is greater than 50
    
    if EEG.artifact.artifactPercentages(1) > EEG.artifact.artifactPercentages(2) && EEG.artifact.artifactPercentages(1) > 50
    
        EEG.data(1,:,:) = EEG.data(2,:,:);
        EEG.artifact.artifactPercentages(1) = EEG.artifact.artifactPercentages(2);
        EEG.artifact.badSegments(1,:) = EEG.artifact.badSegments(2,:);
        EEG.artifact.artifactSize(1,:) = EEG.artifact.artifactSize(2,:);

    end
    if EEG.artifact.artifactPercentages(2) > EEG.artifact.artifactPercentages(1) && EEG.artifact.artifactPercentages(2) > 50
    
        EEG.data(2,:,:) = EEG.data(1,:,:);
        EEG.artifact.artifactPercentages(2) = EEG.artifact.artifactPercentages(1);
        EEG.artifact.badSegments(2,:) = EEG.artifact.badSegments(1,:);
        EEG.artifact.artifactSize(2,:) = EEG.artifact.artifactSize(1,:);
    
    end
    if EEG.artifact.artifactPercentages(3) > EEG.artifact.artifactPercentages(4) && EEG.artifact.artifactPercentages(3) > 50
    
        EEG.data(3,:,:) = EEG.data(4,:,:);
        EEG.artifact.artifactPercentages(3) = EEG.artifact.artifactPercentages(4);
        EEG.artifact.badSegments(3,:) = EEG.artifact.badSegments(4,:);
        EEG.artifact.artifactSize(3,:) = EEG.artifact.artifactSize(4,:);
    
    end
    if EEG.artifact.artifactPercentages(4) > EEG.artifact.artifactPercentages(3) && EEG.artifact.artifactPercentages(4) > 50
    
        EEG.data(4,:,:) = EEG.data(3,:,:);
        EEG.artifact.artifactPercentages(4) = EEG.artifact.artifactPercentages(3);
        EEG.artifact.badSegments(4,:) = EEG.artifact.badSegments(3,:);
        EEG.artifact.artifactSize(4,:) = EEG.artifact.artifactSize(3,:);
    
    end

end