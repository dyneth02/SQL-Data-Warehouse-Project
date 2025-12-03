insert into [silver].[erp_loc_a101] (cid, cntry)
select 
	replace(cid,'-',''),
	case when trim(cntry) = 'DE' then 'Germany'
		 when trim(cntry) in ('US', 'USA') then 'United States'
		 when trim(cntry) = '' or cntry is null then 'n/a'
		 else trim(cntry)
	end as cntry
from [bronze].[erp_loc_a101]
