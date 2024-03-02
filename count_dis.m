function [class, full_distance]= count_dis(center,all_data)
full_distance=0;
[height_center,a]=size(center);
[height_data,b]=size(all_data);

if a~=b
    error('data size dont match')
end
class=zeros(1,height_data);
    for data_count=1:height_data
        for ii=1:height_center
            candi_dis(ii)=pdist2(center(ii,:),all_data(data_count,:));
        end
        min_posi=find(candi_dis==min(candi_dis));
        class(data_count)=min_posi;
        full_distance=full_distance+min(candi_dis);
    end
end