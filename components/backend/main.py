import logging
import aiohttp.web


logging.basicConfig(format='%(asctime)s %(levelname)s\t%(message)s', level=logging.INFO)


async def _handle_ping(request):
    logging.info("ping requested")
    return aiohttp.web.json_response({'message': 'pong'}, status=200)


app = aiohttp.web.Application()
app.router.add_get('/api/ping', _handle_ping)

if __name__ == '__main__':
    aiohttp.web.run_app(app, host='0.0.0.0', port=80)
