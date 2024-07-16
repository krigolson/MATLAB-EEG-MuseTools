function EEG = doRedorderMuseChannels(EEG)

% sets the order to a more logical one, AF7, AF8, TP9, TP10. If this is
% already dones, the function does noting

if sum(EEG.chanlocs(1).labels == 'TP9') == 3

    temp1 = EEG.data(1,:);
    temp2 = EEG.data(2,:);
    temp3 = EEG.data(3,:);
    temp4 = EEG.data(4,:);

    EEG.data(1,:) = temp2;
    EEG.data(2,:) = temp3;
    EEG.data(3,:) = temp1;
    EEG.data(4,:) = temp4; 

    temp11 = EEG.chanlocs(1);
    temp12 = EEG.chanlocs(2);
    temp13 = EEG.chanlocs(3);
    temp14 = EEG.chanlocs(4);

    EEG.chanlocs(1) = temp12;
    EEG.chanlocs(2) = temp13;
    EEG.chanlocs(3) = temp11;
    EEG.chanlocs(4) = temp14;

    EEG.chanlocs(1).labels = 'AF7';
    EEG.chanlocs(2).labels = 'AF8';

end