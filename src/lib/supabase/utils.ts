
export async function fetchAll(
    supabase: any,
    tableName: string,
    select: string = "*",
    orderBy?: { column: string, ascending?: boolean },
    pageSize: number = 1000
) {
    let allData: any[] = []
    let start = 0
    let end = pageSize - 1
    let finished = false

    while (!finished) {
        let query = supabase.from(tableName).select(select).range(start, end)
        
        if (orderBy) {
            query = query.order(orderBy.column, { ascending: orderBy.ascending ?? true })
        }

        const { data, error } = await query
        
        if (error) {
            console.error(`Error fetching page of ${tableName}:`, error)
            throw error
        }

        if (!data || data.length === 0) {
            finished = true
        } else {
            allData = [...allData, ...data]
            if (data.length < pageSize) {
                finished = true
            } else {
                start += pageSize
                end += pageSize
            }
        }
    }

    return allData
}
