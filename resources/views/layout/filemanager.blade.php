@extends('base.app')

@section('title')
    <title>File Manager</title>
@endsection

@section('css')
    {{-- Add your custom styles here --}}
    <link rel="stylesheet" href="{{ asset('css/file-manager.css') }}">
@endsection

@section('content')
    <h2 class="title">File Manager</h2>
    {{-- <div id="cards" class="cards"> --}}
        {{-- @foreach ($images as $image)
            <div class="card">
                <img src="{{ asset('storage/images/' . $image->file_name) }}" alt="{{ $image->file_name }}">
                <div class="card-actions">
                    <button class="delete-btn" data-id="{{ $image->id }}" data-name="{{ $image->file_name }}">Delete</button>
                </div>
            </div>
        @endforeach
    </div> --}}
@endsection

@section('modal')
    <div id="myModal" class="modal">
        <div class="modal-content">
            <h3>Are you sure you want to delete this image?</h3>
            <button id="confirmDelete" class="confirm-btn">Yes</button>
            <button id="cancelDelete" class="cancel-btn">No</button>
        </div>
    </div>
@endsection

@section('script')
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const modal = document.getElementById('myModal');
            const confirmDelete = document.getElementById('confirmDelete');
            const cancelDelete = document.getElementById('cancelDelete');
            let fileToDelete = null;

            document.querySelectorAll('.delete-btn').forEach(button => {
                button.addEventListener('click', function () {
                    const fileId = this.getAttribute('data-id');
                    const fileName = this.getAttribute('data-name');
                    fileToDelete = fileId;
                    modal.style.display = 'block';
                });
            });

            confirmDelete.addEventListener('click', function () {
                if (fileToDelete) {
                    fetch(`/file-manager/delete/${fileToDelete}`, {
                        method: 'DELETE',
                        headers: {
                            'Content-Type': 'application/json',
                            'X-CSRF-TOKEN': '{{ csrf_token() }}',
                        },
                    })
                    .then(response => response.json())
                    .then(data => {
                        if (data.success) {
                            location.reload();
                        } else {
                            alert('Error deleting file.');
                        }
                    });
                }
            });

            cancelDelete.addEventListener('click', function () {
                modal.style.display = 'none';
            });
        });
    </script>
@endsection

{{-- @endsection --}}

{{-- @section('script')
    <script type="text/javascript" src="{{ asset('js/ckfinder/ckfinder.js') }}"></script>
    <script>
        CKFinder.widget('cards', {
            connectorPath: '/ckfinder/connector',
            width: '100%',
            height: 1200,
            uiMode: 'classic',
            preview: {
                width: 200,  // Maximum width for image previews
                height: 200  // Maximum height for image previews
            },
        });

        // Function to auto-close demo version message in CKFinder
        function autoCloseDemoMessage() {
            const messagePopup = document.querySelector('.ckf-message');
            const okButton = document.querySelector('button[data-ckf-button="okClose"]');

            if (messagePopup && okButton) {
                okButton.click();
                messagePopup.style.display = 'none';  // Hide message
            }
        }

        // Run auto-close function after CKFinder loads
        document.addEventListener('DOMContentLoaded', () => {
            // Run immediately and set interval to check every second
            autoCloseDemoMessage();
            setInterval(autoCloseDemoMessage, 1000); 
        });
    </script>
@endsection --}}
