   # 页面访问停留时间排名
    @app.callback(
        dash.dependencies.Output('table_url_time_rank', 'data'),
        [
            dash.dependencies.Input('store_memory_history_data', 'data')
        ]
    )
    def update(store_memory_history_data):

        # 正确获取到历史记录文件
        if store_memory_history_data:
            history_data = store_memory_history_data['history_data']
            table_data = table_data_url_time_rank(history_data)
            return table_data
        else:
            # 取消更新页面数据
            raise dash.exceptions.PreventUpdate("cancel the callback")





    # 某日不同时刻访问次数
    @app.callback(
        dash.dependencies.Output('dropdown_time_1', 'options'),
        [
            dash.dependencies.Input('store_memory_history_data', 'data')
        ]
    )
    def update(store_memory_history_data):

        # 正确获取到历史记录文件
        if store_memory_history_data:
            history_data = store_memory_history_data['history_data']
            result_ist = get_history_date_time(history_data)
            result_options = []

            for data in result_ist:
                result_options.append({'label': data, 'value': data})

            return result_options
        else:
            # 取消更新页面数据
            raise dash.exceptions.PreventUpdate("cancel the callback")


